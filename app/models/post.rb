class Post < ApplicationRecord
 belongs_to :user
 has_many :likes, dependent: :destroy
 attachment :image
 
 with_options presence: true do
   validates :title
   validates :content
   validates:image
 end
 
end