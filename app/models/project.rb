class Project < ActiveRecord::Base
	validates :name, presence: true
	validates :description, length: { minimum: 10}
	has_many :tickets

	def name=(s)
		# binding.pry
    super s.titleize
	end
end
