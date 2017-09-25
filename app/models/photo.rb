class Photo < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
