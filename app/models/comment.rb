class Comment < ApplicationRecord
  belongs_to :article
  # new modificaiton starts
  validates :commenter, presence: true,
            length: { minimum: 5 }
  # new modification ends
end
