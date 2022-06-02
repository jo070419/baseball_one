class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '--'},
    {id: 2, name: '対戦相手'},
    {id: 3, name: '助っ人'}
  ]

  include ActiveHash::Associations
  has_many :recruitments
end