class Story < ActiveRecord::Base

validates :title, presence: true, length: { minimum: 5, message: "The title is too short" }
validates :category, presence: true, length: { minimum: 2 }
validates :upvotes, presence: true, numericality: { greater_than: 0, less_than: 6, only_integer: true, message: "Enter numbers 1-5" }
validates :link, presence: true



	def self.search_for(query)
		where("title LIKE ? OR category LIKE ?", "%#{query}%", "%#{query}%")
	end
end
