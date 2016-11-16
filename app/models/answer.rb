class Answer < ActiveRecord::Base
  belongs_to :word
  has_many :results, dependents: :destroy
end
