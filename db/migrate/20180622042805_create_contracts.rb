class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.date :date
      t.time :hour
      t.references :user, foreign_key: true, index:true
      t.references :service, foreign_key: true, index:true

      t.timestamps
    end
  end
end
