class Post < ActiveRecord::Base
    belongs_to :user
    
   

    mount_uploader :image, S3Uploader
end
