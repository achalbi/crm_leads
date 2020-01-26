class Rmovecolumnfromrespondent < ActiveRecord::Migration[5.2]
  def change
    remove_column :respondents, :string

    rename_column :respondents, :site, :site_name

    add_column :respondents, :site_address, :string
  end
end
