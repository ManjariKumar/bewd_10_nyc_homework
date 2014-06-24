class Story < ActiveRecord::Base

validates :title, :link, :category, :upvotes, presence: true
validates :title, length: { minimum: 5, message: "The title is too short" }
validates :category, length: { minimum: 2, message: "The category is too short" }
validates :upvotes, numericality: { greater_than: 0, less_than: 6, only_integer: true, message: "Enter numbers 1-5" }

end
