class ClientsController < ApplicationController
  def create
    @client = Client.create(client_params)
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :business_name, :description)
  end
end
