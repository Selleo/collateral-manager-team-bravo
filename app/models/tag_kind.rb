class TagKind < ApplicationRecord
   	has_many :tags
	validates_uniqueness_of :kind
	validates_presence_of :kind
end
