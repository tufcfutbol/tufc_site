# == Schema Information
#
# Table name: stats
#
#  id              :integer         not null, primary key
#  player_id       :integer
#  season          :string(255)
#  year            :integer
#  goals           :integer
#  assists         :integer
#  yellow_cards    :integer
#  red_cards       :integer
#  games_played    :integer
#  eboard_position :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Stat < ActiveRecord::Base
  belongs_to :player

  validates :player_id, :presence => true
  validates :season, :presence => true
  validates :year, :presence => true
  validates_inclusion_of :season, :in => %w(Fall Spring),  :message => "%{value} is not a valid season"



end

