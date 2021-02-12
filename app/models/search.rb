class Search
	include ActiveModel::Model
	attr_accessor :query

	def result
		str = :query
		clean_str = str.gsub!(/[^0-9A-Za-z^,]/, '')
		arr = str.split(',')
		binding.pry
		Collateral.all
	end
end