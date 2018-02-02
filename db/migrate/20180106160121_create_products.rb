class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
       	t.string "name"
	    t.text "description"
	    t.string "category"
	    t.string "brand"
	    t.text "variants"

      t.timestamps
    end
  end
end
