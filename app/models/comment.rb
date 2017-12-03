class Comment < ApplicationRecord
  # Direct associations

  belongs_to :commenter,
             :class_name => "User",
             :foreign_key => "user_id"

  belongs_to :photo

  # Indirect associations

  # Validations

end
