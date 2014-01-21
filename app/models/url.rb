class Url < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :link, :hash_code

  validates :link, presence: true, uniqueness: true
end
