class CreateWeboTrackWebousers < ActiveRecord::Migration[7.0]
  def change
    create_table :webo_track_webousers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :status
      t.integer :asset_id

      t.timestamps
    end
  end
end
