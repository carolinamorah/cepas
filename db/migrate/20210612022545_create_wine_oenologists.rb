class CreateWineOenologists < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_oenologists do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :oenologist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
