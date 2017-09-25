class FriendRequest < ApplicationRecord
  # Direct associations

  belongs_to :sender,
             :class_name => "User",
             :counter_cache => :friend_request_sends_count

  # Indirect associations

  # Validations

end
