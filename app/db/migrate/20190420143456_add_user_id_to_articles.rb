class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change
      # add_reference :Articles, :user, foreign_key: true
      # references :article, foreign_key: true
      add_column :articles , :user_id, :integer

  end
end
