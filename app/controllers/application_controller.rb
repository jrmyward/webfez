# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def ensure_trailing_slash
    return if trailing_slash?

    permitted_params = params.merge(trailing_slash: true)
                             .permit(:action, :controller, :trailing_slash)
    redirect_to url_for(permitted_params), status: :moved_permanently
  end

  def trailing_slash?
    request.env['REQUEST_URI'].match(/[^\?]+/).to_s.last == '/'
  end
end
