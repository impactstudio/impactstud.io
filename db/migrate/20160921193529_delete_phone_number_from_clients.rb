class DeletePhoneNumberFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :phone_number
  end
end
