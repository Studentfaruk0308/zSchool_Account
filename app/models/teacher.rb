class Teacher < ApplicationRecord
  belongs_to :salary
  has_many :classrooms
  has_many :students, through: :classrooms
end
