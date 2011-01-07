# == Schema Information
#
# Table name: newsletters
#
#  id          :integer         not null, primary key
#  entry       :text
#  authored_by :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Newsletter < ActiveRecord::Base
end

