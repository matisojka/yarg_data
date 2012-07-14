class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :alpha2_code, null: false, limit: 2
      t.string :iso_english_name, null: false
      t.string :alpha3_code, null: false, limit: 3
      t.string :numeric_code, null: false, limit: 3
      t.string :international_phone_code, limit: 4
    end

    add_index :countries, :alpha2_code
  end
end
