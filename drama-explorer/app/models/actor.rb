class Actor < ApplicationRecord
    has_many :participations, dependent: :destroy
    has_many :dramas, through: :participations

    validates :name, presence: true, uniqueness: { message: 'Duplicate actor name' }
    validates :eng_name, presence: true, uniqueness: { message: 'Duplicate actor eng_name' }

    def img_url
		s3_image_url + eng_name + '.jpg'
	end
end
