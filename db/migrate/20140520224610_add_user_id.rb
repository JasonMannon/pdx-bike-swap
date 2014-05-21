class AddUserId < ActiveRecord::Migration
  def change
  	add_column :components, :user_id, :int
  end
end
