class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :address
      t.string :description, :length => 255
      t.string :name
      t.integer :guide_id
      t.timestamps
    end
  end
end
