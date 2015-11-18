class User < ActiveRecord::Base

  has_attached_file :profile_photo, :styles => { :medium => "300x300", :thumb => "100x100" }
  validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :profile_photo, :less_than => 3.megabytes

end
