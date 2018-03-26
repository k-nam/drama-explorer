class Actor < ApplicationRecord
    has_many :participations, dependent: :destroy
    has_many :dramas, through: :participations

    validates :name, :img_url, presence: true
    validates :name, uniqueness: { message: 'Duplicate actor name' }
end
