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
		#Collateral.joins(:tags).
		#where("tags.name iLike ? OR tags.name iLike ? AND tags.kind iLike ? OR tags.name iLike ?" "asfsaf", "stock","ruby","usa")
		where_query = ""
		array.each do |item|
			if !(array.last == item)
				where_query<<"tags.name iLike '#{item}' OR "
			else 
				where_query<<"tags.name iLike '#{item}'"
			end
		end
		Collateral.joins(:tags).where(where_query)
	end
end