class HomeController < ApplicationController
  def index() end

  def cv() end

  def mail
    ContactMailer.email(params[:mail]).deliver
    flash[:notice] = 'Thank you, your email was sent.'
    render :index, status: :ok
  end
end
