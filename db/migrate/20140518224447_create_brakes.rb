class CreateBrakes < ActiveRecord::Migration
  def change
    create_table :brakes do |t|
    	t.column :comapny, :string
    	t.column :name, :string
    	t.column :condition, :string
    	t.column :price, :float
    	t.column :description, :string
    end
  end
end
