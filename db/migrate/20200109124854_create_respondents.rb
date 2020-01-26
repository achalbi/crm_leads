class CreateRespondents < ActiveRecord::Migration[5.2]
  def change
    create_table :respondents do |t|
      t.string :title
      t.string :name
      t.string :string
      t.date :lead_date
      t.string :email
      t.string :lead_source
      t.string :select_executive
      t.string :phone
      t.string :lead_type
      t.string :company_name
      t.string :company_address
      t.string :site

      t.timestamps
    end
  end
end
