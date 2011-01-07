# == Schema Information
#
# Table name: games
#
#  id            :integer         not null, primary key
#  date          :datetime
#  against       :string(255)
#  tufc_goals    :integer
#  against_goals :integer
#  home          :boolean
#  league_game   :boolean
#  playoff_game  :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

class Game < ActiveRecord::Base
end

