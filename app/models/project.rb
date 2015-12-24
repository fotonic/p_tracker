class Project < ActiveRecord::Base
	validates :name, presence: true

	has_many :tickets

	def name=(s)
		# binding.pry
    super s.titleize
	end
end
