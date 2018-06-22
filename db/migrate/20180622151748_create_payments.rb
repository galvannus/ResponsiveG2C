class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :amount
      t.references :user, foreign_key: true, index:true
      t.references :service, foreign_key: true, index:true

      t.timestamps
    end
  end
end
