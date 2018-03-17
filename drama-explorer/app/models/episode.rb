class Episode < ApplicationRecord
  belongs_to :season

  validates :episode_num, :filename, presence: true
  
  def <=>(other)
    self.episode_num <=> other.episode_num
  end
end 
