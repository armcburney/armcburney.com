# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @email = Email.new
  end

  def cv() end

  def mail
    @email = Email.new(email_params)

    if @email.save
      redirect_to root_url, notice: t("messages.email-success")
    else
      render :index
    end
  end

  private

  def email_params
    params.require(:email).permit(:name, :email, :message)
  end
end
