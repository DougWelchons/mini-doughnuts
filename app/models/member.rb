class Member < ApplicationRecord
  has_many :meetings
  has_many :members, through: :meetings
end
