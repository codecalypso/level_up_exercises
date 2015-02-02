class AddTitleToBills < ActiveRecord::Migration
  def change
    add_column :bills, :official_title, :string
  end
end
