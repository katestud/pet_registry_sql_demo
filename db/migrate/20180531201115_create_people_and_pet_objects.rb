class CreatePeopleAndPetObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :prefix
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.timestamps
    end

    create_table :dogs do |t|
      t.references :owner
      t.string :name
      t.string :breed
      t.string :gender
      t.string :age
      t.timestamps
    end

    create_table :phone_numbers do |t|
      t.references :owner
      t.string :number_type
      t.string :number
      t.timestamps
    end
  end
end
