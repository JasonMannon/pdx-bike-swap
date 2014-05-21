class CreateComponentss < ActiveRecord::Migration
  def change
    create_table :components do |t|
    	t.column :name, :string
    	t.column :company, :string
    	t.column :price, :float
    	t.column :condition, :string
    	t.column :description, :string

    	t.timestamps
    end
  end
end
