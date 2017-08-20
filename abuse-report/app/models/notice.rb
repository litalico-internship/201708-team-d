class Notice < ApplicationRecord
  has_many :notice_signs
  has_many :signs, through: :notice_signs
  belongs_to :status
end
