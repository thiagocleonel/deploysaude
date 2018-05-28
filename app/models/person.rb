class Person < ApplicationRecord
  belongs_to :locality
  has_many :collaborator, :dependent => :destroy
  accepts_nested_attributes_for :locality
end
