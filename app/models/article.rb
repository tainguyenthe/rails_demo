class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, precesence: true,
					length: { minimum: 5 }
	belongs_to :users
end