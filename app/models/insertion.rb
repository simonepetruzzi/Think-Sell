class Insertion < ApplicationRecord

  
  
  belongs_to :user, foreign_key: 'user_id' 
  has_many_attached :thumbnail 
  has_rich_text :body
  validates :price, presence: true, numericality: true
  validates :title, length: { minimum: 2 }
  





  def optimized_image(image,x,y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
