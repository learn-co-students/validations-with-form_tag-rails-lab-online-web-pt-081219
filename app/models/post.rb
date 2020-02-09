class Post < ActiveRecord::Base
  validates :title, presence: true
 validates :content, length: {minimum: 100, message: "Content needs a minimum of 100 characters."}
 validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "Category can only be Fiction or Non-Fiction."}
end
