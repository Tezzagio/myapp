class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.string :category
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :portfolios, :users
  end
end
