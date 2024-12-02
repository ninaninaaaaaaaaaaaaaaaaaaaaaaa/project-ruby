class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable

  enum role: { admin: 0, teacher: 1, student: 2 }
end
