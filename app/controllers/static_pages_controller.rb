class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.limit(9)
  end

  def thank_you
  	UserMailer.contact_form(@email, @name, @message).deliver_now
	end
end
