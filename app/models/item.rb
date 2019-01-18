class Item < ApplicationRecord
  belongs_to :branch

  validates :branch, presence: true
  validates :name, presence: true
  validates :stock, presence: true
  validates :price, presence: true

	after_save :set_identifier

	def set_identifier
    company = self.branch.company.name.parameterize.underscore
		branch = self.branch.name.parameterize.underscore
		name = self.name.parameterize.underscore
		stock = self.stock
		identifier = self.identifier
		now = Time.now.strftime('%d%m%Y%H%M')

		identifier_candidate = "#{name.downcase}_#{branch.downcase}_#{company}_#{stock}_#{now}"

    if (self.identifier != identifier_candidate)
    	self.update_attribute('identifier', identifier_candidate)
    end
  end
end
