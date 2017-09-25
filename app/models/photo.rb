class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :user,
             :counter_cache => true

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :likes,
             :source => :user

  has_many   :users_who_like,
             :through => :likes,
             :source => :user

  # Validations

end
