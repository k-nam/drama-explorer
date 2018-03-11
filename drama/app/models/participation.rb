class Participation < ApplicationRecord
  belongs_to :drama
  belongs_to :actor

  validates :actor, uniqueness: { scope: :drama, message: 'Duplicate actor in a drama' }
end
