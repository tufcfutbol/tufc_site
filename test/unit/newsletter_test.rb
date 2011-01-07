# == Schema Information
#
# Table name: newsletters
#
#  id          :integer         not null, primary key
#  entry       :text
#  created_at  :datetime
#  updated_at  :datetime
#  authored_by :string(255)
#

require 'test_helper'

class NewsletterTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

