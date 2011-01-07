# == Schema Information
#
# Table name: players
#
#  id                 :integer         not null, primary key
#  first_team         :boolean
#  preffered_position :string(255)
#  rating             :integer
#  hometown           :string(255)
#  notes              :text
#  first_name         :string(255)
#  last_name          :string(255)
#  year               :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

