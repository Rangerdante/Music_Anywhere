class Song < ActiveRecord::Base
	attr_accessible :songname
	
	belongs_to :user
	
	validates :songname, :presence => true, :length => { :maximum => 30 }
	validates :user_id, :presence => true
	
	default_scope :order => 'songs.created_at DESC'
end
