class Competition < ApplicationRecord
  has_many  :team_competitions
  has_many  :teams, through: :team_competitions
  has_many  :players, through: :teams

  def avg_player_age
    players.average(:age)
  end

end
