class Meeting < ApplicationRecord
  belongs_to :member1, class_name: "Member"
  belongs_to :member2, class_name: "Member"
end
