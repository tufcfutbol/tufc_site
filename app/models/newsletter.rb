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

class Newsletter < ActiveRecord::Base

end

