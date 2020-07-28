class AccountsController < ApplicationController
  def show
    @wallet = User.find(params[:id]).wallet

    render json: WalletSerializer.new(@wallet).serialized_json
  end
end
