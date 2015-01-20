class PortfolioController < ApplicationController
	before_action :authenticate_user!, only: [ :new, :create ]


  def index
  	@Portfolio = Portfolio.all
  end

  def IxD
  	@Interaction_Design = Portfolio.all
  end
end
