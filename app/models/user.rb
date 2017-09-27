class User < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  has_many   :friend_requests_received,
             :class_name => "FriendRequest",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :friend_request_sends,
             :class_name => "FriendRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :photos_theyve_liked,
             :through => :people_they_follow,
             :source => :photos_they_like

  has_many   :photos_they_have_liked,
             :through => :people_they_follow,
             :source => :photos

  has_many   :photos_they_comment_on,
             :through => :comments,
             :source => :photo

  has_many   :photos_they_like,
             :through => :likes,
             :source => :photo

  has_many   :followers,
             :through => :friend_requests_received,
             :source => :sender

  has_many   :people_they_follow,
             :through => :friend_request_sends,
             :source => :recipient

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
