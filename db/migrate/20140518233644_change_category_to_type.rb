class ChangeCategoryToType < ActiveRecord::Migration
  def change
  	remove_column :categories, :category, :string
  	add_column :categories, :type, :string
  end
end
