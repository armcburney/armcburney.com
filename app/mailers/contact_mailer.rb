# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def email(args)
    @name  = args[:name]
    @email = args[:email]
    @body  = args[:message]

    mail(to: t("general.email"), subject: "Contact Form Email")
  end
end
