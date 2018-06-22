class Collaborator < ActiveRecord::Base
  attr_accessor :person_attributes, :collaborator_category_attributes
  attr_accessor :collaborator_category_attributes
  attr_accessor :person_id, :collaborator_category_id


  belongs_to :person, :dependent => :destroy, :foreign_key => :person_id
  belongs_to :collaborator_category, :dependent => :destroy, :foreign_key => :collaborator_category_id

  accepts_nested_attributes_for :person, reject_if: :all_blank
  accepts_nested_attributes_for :collaborator_category


  def to_s
    person.name
  end
end
