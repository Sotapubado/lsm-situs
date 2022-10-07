class RemoveImgFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :img, :string
  end
end
