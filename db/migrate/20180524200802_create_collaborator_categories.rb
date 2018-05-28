class CreateCollaboratorCategories < ActiveRecord::Migration
  def change
    create_table :collaborator_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
