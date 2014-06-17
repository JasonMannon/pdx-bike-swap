class AddDatatypeText < ActiveRecord::Migration
  def change
  	def up
      change_column :components, :description, :text
    end
	def down
	    # This might cause trouble if you have strings longer
	    # than 255 characters.
	    change_column :components, :description, :string
	end
  end
end
