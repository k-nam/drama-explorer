class Season < ApplicationRecord
	belongs_to :drama
	has_many :episodes, dependent: :destroy

	validates :season_num, :url_prefix, :num_total_episode, presence: true
	
	def <=>(other)
		self.season_num <=> other.season_num
 	end
end
