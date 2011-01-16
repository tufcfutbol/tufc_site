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
#  email              :string(255)
#

class Player < ActiveRecord::Base
  has_many :stats, :dependent => :destroy

  validates :first_name, :presence => true, :length => {:maximum => 50}
  validates :last_name, :presence => true
  validates :email, :presence => true, :format => {:with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i}, :uniqueness => {:case_sensitive => false}
  validates :year, :presence => true
  validates_numericality_of :year, :greater_than => 1950, :less_than => 2100
  validates_numericality_of :rating, :greater_than => 0, :less_than => 11

  default_scope :order => 'last_name'





end

