class CreateEverything < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :orders do |t|
      t.belongs_to :user, index: true
      t.timestamps null: false
    end

    create_table :line_items do |t|
      t.integer :quantity
      t.belongs_to :product, index: true
      t.belongs_to :order, index: true
      t.timestamps null: false
    end

    create_table :products do |t|
      t.string :name
      t.integer :price
    end
  end
end
