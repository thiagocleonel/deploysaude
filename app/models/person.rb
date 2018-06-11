class Person < ActiveRecord::Base
  belongs_to :locality
  has_many :collaborator, :dependent => :destroy
  accepts_nested_attributes_for :locality
end
