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

require 'test_helper'

class StatTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

