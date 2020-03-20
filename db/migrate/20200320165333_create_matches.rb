class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :liker_id
      t.integer :liked_id
      t.boolean :approval

      t.timestamps
    end
  end
end
