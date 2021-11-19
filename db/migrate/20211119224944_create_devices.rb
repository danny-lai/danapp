class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :model
      t.string :uuid
      t.text :token
      t.string :platform

      t.timestamps
    end
  end
end
