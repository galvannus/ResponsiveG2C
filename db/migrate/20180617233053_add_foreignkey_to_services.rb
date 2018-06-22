class AddForeignkeyToServices < ActiveRecord::Migration[5.1]
  def change
  	add_reference :services, :category, foreign_key: true, index:true
  end
end
