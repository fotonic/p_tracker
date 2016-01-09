class Project < ActiveRecord::Base
	validates :name, presence: true
	validates :description, length: { minimum: 10}
	has_many :tickets, dependent: :delete_all

	def name=(s)
		# binding.pry
    super s.titleize
	end
end
