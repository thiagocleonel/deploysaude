class Collaborator < ActiveRecord::Base
  attr_accessor :person_attributes

  belongs_to :person, :dependent => :destroy
  belongs_to :collaborator_category, :dependent => :destroy
  attr_accessor :person_id, :collaborator_category_id
  accepts_nested_attributes_for :person, reject_if: :all_blank
  accepts_nested_attributes_for :collaborator_category


  def to_s
    person.name
  end
end
