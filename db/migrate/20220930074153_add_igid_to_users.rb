class AddIgidToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :igid, :string
  end
end
