class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
    	t.column :brake_id, :int
    end
  end
end
