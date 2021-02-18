class Search
	include ActiveModel::Model
	attr_accessor :query
	
	def get
		@query = :query
	end
	def result
		string = @query
		
		clean_string = string.gsub(/[^0-9A-Za-z^,]/, '')
		array = clean_string.split(',')
		where_query = ""
		array.each do |item|
			if !(array.last == item)
				where_query<<"tags.name iLike '%#{item}%' OR "
			else 
				where_query<<"tags.name iLike '%#{item}%'"
			end
		end
		Collateral.joins(:tags).where(where_query).group("collaterals.id")
	end
	
	def beu
		result.map do |collateral|
			
			{ :collateral => collateral,
			  # :tag_strength => strength_of_tag(collateral),		
			  :strength => sum_strength(collateral) 
			}
		end

	end

	def sorted_beu
		beu.sort_by { |collateral_map| collateral_map[:strength] }.reverse
	end

	def sum_strength(collateral)
       CollateralTag.all.where(collateral_id: collateral.id).pluck(:strength).compact.sum
    end

 #   	def strength_of_tag(collateral)

	# end 
end