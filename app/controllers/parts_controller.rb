class PartsController < ApplicationController
before_action :authenticate_user!, only: [ :part, :create ]
  def part
    @title = "OpenERP - Part Maintenance"
    @current_company = "TEST"
    render
  end

  def create
  end
end
