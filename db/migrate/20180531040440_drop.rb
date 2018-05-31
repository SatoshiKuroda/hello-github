class Drop < ActiveRecord::Migration[5.2]
  def change
    drop_table:categories
    drop_table:categories_products
    drop_table:category_products
    drop_table:groups
    drop_table:playerrails
    drop_table:pplayers
    drop_table:products
  end
end
