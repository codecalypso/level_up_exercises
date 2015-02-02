class AddIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :bill_id, :integer
  end
end
