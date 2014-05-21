class AddCategoryId < ActiveRecord::Migration
  def change
  	add_column :components, :category_id, :int
  end
end
