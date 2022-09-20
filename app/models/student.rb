class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :tuitionfee
  has_many :feepayments
end
