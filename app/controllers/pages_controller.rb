# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :ensure_trailing_slash

  def home; end
end
