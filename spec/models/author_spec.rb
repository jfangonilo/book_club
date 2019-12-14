require 'rails_helper'

describe Author do
  describe "validations" do
    it {should validate_presence_of :name}
  end

  describe "relationships" do
    it {should have_many :book_authors}
    it {should have_many(:books).through(:book_authors)}
  end

  describe "instance methods" do
    it ".average_page_count" do
      author = create(:author)
      book_1 = create(:book, pages: 100)
      book_2 = create(:book, pages: 1000)
      book_3 = create(:book, pages: 350)
      author.books << [book_1, book_2, book_3]

      expect(author.average_page_count).to be_between(483, 484)
    end
  end
end