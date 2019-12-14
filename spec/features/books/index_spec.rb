require 'rails_helper'

describe "books index page" do
  it "shows the books in the system and its attributes" do
    book_1 = create(:book)
    book_2 = create(:book)
    book_3 = create(:book)

    author_1 = create(:author)
    author_2 = create(:author)

    book_1.authors << author_1
    book_2.authors << [author_1, author_2]
    book_3.authors << author_2

    visit "/books"

    within "#book-#{book_1.id}" do
      expect(page).to have_content book_1.title
      expect(page).to have_content book_1.publication_year
      expect(page).to have_content book_1.pages
      expect(page).to have_content author_1.name
    end

    within "#book-#{book_2.id}" do
      expect(page).to have_content book_2.title
      expect(page).to have_content book_2.publication_year
      expect(page).to have_content book_2.pages
      expect(page).to have_content author_1.name
      expect(page).to have_content author_2.name
    end

    within "#book-#{book_3.id}" do
      expect(page).to have_content book_3.title
      expect(page).to have_content book_3.publication_year
      expect(page).to have_content book_3.pages
      expect(page).to have_content author_2.name
    end
  end
end