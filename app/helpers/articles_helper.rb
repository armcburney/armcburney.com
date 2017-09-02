# frozen_string_literal: true

module ArticlesHelper
  def logged_in?
    request.authorization.present?
  end
end
