require 'rails_helper'

describe BookAuthor do
  describe "validations" do
    it {should validate_presence_of :book_id}
    it {should validate_presence_of :author_id}
  end

  describe "relationships" do
    it {should belong_to :book}
    it {should belong_to :author}
  end
end