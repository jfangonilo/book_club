books = FactoryBot.create_list(:book, 9)
authors = FactoryBot.create_list(:author, 4)

books[0].authors << authors[0]
books[1].authors << authors[1]
books[2].authors << [authors[2], authors[3]]
books[3].authors << [authors[1], authors[3]]
books[4].authors << [authors[2], authors[1]]
books[5].authors << [authors[0], authors[1]]
books[6].authors << [authors[0], authors[1], authors[2]]
books[7].authors << [authors[1], authors[2], authors[3]]
books[8].authors << [authors[0], authors[1], authors[2], authors[3]]