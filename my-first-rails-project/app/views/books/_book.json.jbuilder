json.extract! book, :id, :name, :year_of_publication, :publisher, :created_at, :updated_at
json.url book_url(book, format: :json)
