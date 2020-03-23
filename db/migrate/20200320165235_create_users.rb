class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.datetime :dob
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
