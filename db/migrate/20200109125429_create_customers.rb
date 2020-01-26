class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :title
      t.string :name
      t.string :string
      t.string :email
      t.string :phone
      t.string :company_name
      t.string :company_address
      t.string :site_name
      t.string :site_address
      t.date :hand_over_date

      t.timestamps
    end
  end
end
