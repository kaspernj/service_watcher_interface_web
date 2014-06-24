class Group < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :group_reporters
  has_many :services, :through => :group_reporters
  has_many :reporters, :through => :group_reporters
end