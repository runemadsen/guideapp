class AddPublicEditToGuides < ActiveRecord::Migration
  def change
    add_column :guides, :public_edit, :boolean, :default => false
  end
end
