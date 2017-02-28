class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :body, presence: true, length: {minimum: 50, maximum: 10000}
end