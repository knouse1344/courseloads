class Pickuprequest < ActiveRecord::Base
	attr_accessible :name, :address, :weight
	
	validates :name, presence: true
	validates :weight, presence: true
	validates :address, presence: true
end
