#contents of app/models/recipe.rb
class Recipe
 include HTTParty
 ENV["FOOD2FORK_KEY"] = '3b77113b39811fb23fd45c8e8b128662'
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json
 
 def self.for term
 get("/search", query: { q: term, })["recipes"]
 end
end