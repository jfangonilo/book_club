class BookAuthor < ApplicationRecord
  belongs_to :book
  belongs_to :author

  validates_presence_of :book_id
  validates_presence_of :author_id
end