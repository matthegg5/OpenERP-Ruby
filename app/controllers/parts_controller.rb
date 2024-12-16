class PartsController < ApplicationController
  def index
    @title = "OpenERP - Part Maintenance"
    @current_company = "TEST"
    render
  end

  def create
  end
end
