class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @offers = Offer.all.includes(:offer_type)
  end
end