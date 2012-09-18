class Space < ActiveRecord::Base
  attr_accessible :sid
  has_many :submissions
end
