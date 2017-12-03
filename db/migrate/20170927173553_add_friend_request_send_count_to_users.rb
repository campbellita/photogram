class AddFriendRequestSendCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :friend_request_sends_count, :integer
  end
end
