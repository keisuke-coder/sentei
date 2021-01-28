class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :company, null: false
      t.string :name, null: false
      t.integer :employee_num, null: false
      t.time :start_time, null: false
      t.time :ending_time, null: false
      t.string :regular_holiday, null: false
      t.integer :tel, null: false
      t.integer :first_postal_code, null: false
      t.integer :last_postal_code, null: false
      t.string :address, null: false
      t.references :user, null: false, foreign_key: true
      t.text :explanation, null: false

      t.timestamps
    end
  end
end
