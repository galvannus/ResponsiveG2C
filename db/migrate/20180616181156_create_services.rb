class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.text :detail
      t.string :openhour
      t.string :closehour

      t.timestamps
    end
  end
end
