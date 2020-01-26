class CreateAmcs < ActiveRecord::Migration[5.2]
  def change
    create_table :amcs do |t|
      t.date :from_date
      t.date :to_date
      t.string :type
      t.integer :price
      t.string :tax_type
      t.integer :total

      t.timestamps
    end
  end
end
