class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :address
      t.integer :number

      t.timestamps
    end
  end
end
