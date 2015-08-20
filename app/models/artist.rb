class Artist < ActiveRecord::Base
	has_many :songs
	validates :name, presence: true, uniqueness: true
	has_attached_file :avatar, :styles => { :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
