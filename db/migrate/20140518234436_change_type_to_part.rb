class ChangeTypeToPart < ActiveRecord::Migration
  def change
  	remove_column :categories, :type, :string
  	add_column :categories, :part, :string
  end
end
