class User < ActiveRecord::Base
	has_many :interests, dependent: :destroy
	has_one :address, dependent: :destroy

	def self.search(male)
  	where("gender like ?", "#{male}") 
	end
end
