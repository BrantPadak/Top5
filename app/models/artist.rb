class Artist < ActiveRecord::Base
	has_many :songs
	validates :name, presence: true, uniqueness: true
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
	#   :download,
	#   :storage => :s3,
	#   :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  #def s3_credentials
  #  {:bucket => "top5padak-images", :access_key_id => "AKIAJ7O4M46KLAZ3B6CQ", :secret_access_key => "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"}
  #end
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
