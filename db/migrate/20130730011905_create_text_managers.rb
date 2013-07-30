class CreateTextManagers < ActiveRecord::Migration
  def change
    create_table :text_managers do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :text_managers, :name
  end
end
