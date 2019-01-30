# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :ensure_trailing_slash

  def about; end

  def charity; end

  def contact; end

  def events; end

  def facility_rental; end

  def home; end

  def memberships; end

  def news; end

  def privacy; end

  def shriners_international; end
end
