class Word < ActiveRecord::Base
  belongs_to :category
  has_many :answers, dependent: :destroy
 
end
