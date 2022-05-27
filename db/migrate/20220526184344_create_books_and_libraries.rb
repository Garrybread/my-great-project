class CreateBooksAndLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :books_libraries, id: false do |t|
      t.belongs_to :book
      t.belongs_to :library
    end
  end
end
