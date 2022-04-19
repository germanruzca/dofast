class OffersController < ApplicationController
  before_action :authenticate_user!

  def favorite
    @offers = Offer.all.includes(:offer_type, :user, :tag)
  end

  def latest
    @offers = Offer.all.includes(:offer_type, :user).where(created_at: 1.day.ago..Time.now).order(created_at: :desc)
  end

  def show 
    @offer = Offer.find_by(id: params[:id])

    unless @offer
      flash[:error] = 'Offer not found'
      redirect_to root_path
    end
  end

  def new
    @offer = Offer.new
    @types_of_offer = OfferType.all.map { |type| [type.name, type.id] }
  end

  def create
    @offer = current_user.offers.new(user_params)

    if @offer.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:offer).permit(:title, :description, :offer_type_id, :previous_conversation, :tag_id, :earning)
  end
end
