class Drama < ApplicationRecord
	has_many :seasons, dependent: :destroy
	has_many :participations, dependent: :destroy
	has_many :actors, through: :participations

	validates :title, presence: true, uniqueness: { message: 'Duplicate drama title' }
	validates :eng_title, presence: true, uniqueness: { message: 'Duplicate drama eng_title' }


	def num_total_season
		self.seasons.length
	end

	def num_total_episode
		seasons.inject(0) { |sum, season| sum + season.episodes.length }
	end

	def find_participation(actor)
		self.participations.each do |p|
			if p.drama_id == self.id && p.actor_id == actor.id
				return p 
			end
		end
	end

end
