class PartsController < ApplicationController
before_action :authenticate_user!, only: [ :part, :create ]
  def part
    @title = "Part Maintenance"
    @current_company = "TEST"
    @part = Part.new
    render
  end

  def create
      @part = Part.new(part_params)  # Initialize the part with the form data

      if @part.save  # If the part is valid and saved successfully
        redirect_to @part, notice: "Part #{@part.PartNum} was successfully created."
      else
        render :new  # Re-render the 'new' view with the error messages
      end
  end

  private

  # Strong parameters to whitelist the form inputs
  def part_params
    params.require(:part).permit(:CompanyId, :PartNum, :PartDescription, :SerialTracked, :DefaultUom, :PhantomBOM)
  end
end
