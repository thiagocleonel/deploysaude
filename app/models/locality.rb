class Locality < ActiveRecord::Base
  has_many :people
  accepts_nested_attributes_for :people, allow_destroy: true

end
