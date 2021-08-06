class CreateWinestrains < ActiveRecord::Migration[6.0]
  def change
    create_table :winestrains do |t|
      t.integer :percent
      t.references :wine, null: false, foreign_key: true
      t.references :strain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
