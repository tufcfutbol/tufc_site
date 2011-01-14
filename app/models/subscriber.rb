# == Schema Information
#
# Table name: subscribers
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Subscriber < ActiveRecord::Base

  validates :email, :presence => true, :format => {:with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i}, :uniqueness => {:case_sensitive => false}

end

