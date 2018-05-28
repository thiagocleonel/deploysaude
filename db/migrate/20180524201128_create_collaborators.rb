class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.references :person, foreign_key: true
      t.references :collaborator_category, foreign_key: true

      t.timestamps
    end
  end
end
