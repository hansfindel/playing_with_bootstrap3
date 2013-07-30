class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
