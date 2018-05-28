class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
