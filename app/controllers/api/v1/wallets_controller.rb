class Api::V1::WalletsController < Api::V1::ApiController
  def index
    wallets = Wallet.all
    render json: wallets.to_json(:include => [:category])
  end

  def show
    wallet = Wallet.find(params[:id])
    render json: wallet.to_json()
  end

  def create
    wallet = Wallet.new(wallet_params)
    if wallet.save
      render status: 200, json: {
        message: "New wallet created",
        wallet: wallet
      }.to_json
    else
      render status: 422, json: {
        message: "wallet could not be created",
        errors: wallet.errors
      }.to_json
    end
  end

  def update
    wallet = Wallet.find(params[:id])
    if wallet.update(wallet_params)
      render status: 200, json: {
        message: "Successfully updated wallet.",
        wallet: wallet
      }.to_json
    else
      render status: 422, json: {
        message: "Wallet update failed.",
        errors: wallet.errors
      }.to_json
    end
  end

  def destroy
    wallet = Wallet.find(params[:id])
    wallet.destroy
    render status: 200, json: {
      message: "Wallet successfully deleted.",
      wallet: wallet
    }.to_json
  end

  private
  def wallet_params
    params.permit( :name, :price, :user_id, :category_id)
  end


end
