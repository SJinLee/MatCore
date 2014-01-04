class BCategory < ActiveRecord::Base
  belongs_to :a_category
  attr_accessible :display, :name
end
