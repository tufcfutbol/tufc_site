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

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

