# frozen_string_literal: false

# FlatsController
class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    Flat.create!(flat_params)

    redirect_to flats_path
  end

  private

  # Only allow a list of trusted parameters through.
  def flat_params
    params.require(:flat).permit(
      :name,
      :address,
      :description,
      :price_per_night,
      :number_of_guests
    )
  end
end
