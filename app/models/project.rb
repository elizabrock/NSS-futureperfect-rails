class Project < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user

  validates_presence_of :user
end
