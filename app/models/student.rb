class Student < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :grades
end
