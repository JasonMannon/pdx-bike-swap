class AddValuesToComponents < ActiveRecord::Migration
  def change
  	add_column :components, :company, :string
  	add_column :components, :name, :string
  	add_column :components, :price, :float
  	add_column :components, :condition, :string
  	add_column :components, :category_id, :int
  	add_column :components, :user_id, :int
  end
end
