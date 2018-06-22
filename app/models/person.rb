class Person < ActiveRecord::Base
  belongs_to :locality
  has_many :collaborators, :dependent => :destroy
  accepts_nested_attributes_for :locality
  accepts_nested_attributes_for :collaborators
end
