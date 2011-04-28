class CreateShortens < ActiveRecord::Migration
  def change
    create_table :shortens do |t|
      t.string :address
      t.string :short
      t.integer :user_id

      t.timestamps
    end
  end
end
