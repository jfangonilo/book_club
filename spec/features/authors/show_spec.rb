require 'rails_helper'

describe "author show page" do
  it "displays the author's name, books, and average page count per book" do
    author = create(:author)
    books = create_list(:book, 3)
    author.books << books

    visit "/authors/#{author.id}"
    expect(page).to have_content author.name
    expect(page).to have_content book_1.name
    expect(page).to have_content book_2.name
    expect(page).to have_content book_3.name
    expect(page).to have_content author.average_page_count
  end
end