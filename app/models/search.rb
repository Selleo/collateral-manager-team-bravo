class Search
	include ActiveModel::Model
	attr_accessor :query
	
	def get
		@query = :query
	end
	def result
		array = clean_string
		where_query = ""
		array.each do |item|
			if !(array.last == item)
				where_query<<"tags.name iLike '%#{item}%' OR "
			else 
				where_query<<"tags.name iLike '%#{item}%'"
			end
		end
		build_query(where_query)
	end

	def build_query(attrs)
		Collateral.joins(:tags).where(attrs).group("collaterals.id")
	end

	def beu
		result.map do |collateral|
			
			{ :collateral => collateral,
			  :strength => sum_strength(collateral) 
			}
		end
	end

	def sorted_beu
		beu.sort_by { |collateral_map| collateral_map[:strength] }.reverse
	end

	def sum_strength(collateral)
		tags = clean_string
		sum = 0
		tags.each do |tag|
			collateral.collateral_tags.each do |coll_tag|
				if coll_tag.tag.name.downcase == tag
					sum += coll_tag.strength.to_f
				end
			end
		end
		return sum
	    # CollateralTag.all.where(collateral_id: collateral.id).pluck(:strength).compact.sum
    end

    def clean_string
    	string = @query
		clean_string = string.gsub(/[^0-9A-Za-z^,]/, '')
		clean_string.split(',')
	end
end