class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :gender
      t.string :emails
      t.text :subject

      t.timestamps
    end
  end
end
