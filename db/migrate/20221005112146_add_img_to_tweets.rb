class AddImgToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweets, :img, :string
  end
end
