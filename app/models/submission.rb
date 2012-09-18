class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :space
  attr_accessible :score, :file
  mount_uploader :file, FileUploader
end
