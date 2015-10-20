class User < ActiveRecord::Base

	def self.search(user_params)
		#make sure the search parameters are valid
		valid_conditions = ['first_name', 'age', 'profession']
		
		#create search conditions hash making sure key is valid and value is not blank		
		search_conditions = {}

		user_params.each do |key, value|
			if valid_conditions.include?(key) && !value.blank? 
				search_conditions[key] = value
			end
		end

		#execute query
		where(search_conditions)
	end

end
