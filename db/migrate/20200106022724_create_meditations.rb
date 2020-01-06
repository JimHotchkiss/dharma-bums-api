class CreateMeditations < ActiveRecord::Migration[5.2]
  def change
    create_table :meditations do |t|
      t.string :theme
      t.integer :duration
      t.string :organizer

      t.timestamps
    end
  end
end
