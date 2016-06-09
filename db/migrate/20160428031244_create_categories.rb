class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :types # enum (income, debit, kredit ...)
      t.string :path_img
      t.timestamps null: false
    end
  end
end
