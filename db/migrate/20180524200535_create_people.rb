class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :document
      t.string :street
      t.string :number
      t.references :locality, foreign_key: true
      t.string :other
      t.string :cep
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
