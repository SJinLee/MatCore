class ACategory < ActiveRecord::Base
  has_many :b_categories
  attr_accessible :display, :name
end
