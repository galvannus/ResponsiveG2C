class RemoveColumnAdressStateMunicipalityAndAddColumnWalletToUserTable < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :adress, :string
  	remove_column :users, :state, :string
  	remove_column :users, :municipality, :string
  	add_column :users, :wallet, :decimal
  	add_column :users, :type_user, :string
  	add_column :services, :cost, :decimal
  end
end
