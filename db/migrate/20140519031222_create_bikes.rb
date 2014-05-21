class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
    	t.column :name, :string
    end
  end
end
