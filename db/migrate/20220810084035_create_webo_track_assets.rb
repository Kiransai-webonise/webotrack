class CreateWeboTrackAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :webo_track_assets do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
