class TextManager < ActiveRecord::Base
	validates_uniqueness_of :name
	def self.search(name)
		where(name: name).first.try("description") || name
	end
end
