class ForecastsController < ApplicationController

  def show
    location = Geocoder.search(params[:id]).first
    if location.nil?
      render :json => "Location not found."
    else
      lat      = location.geometry['location']['lat']
      long     = location.geometry['location']['lng']
      forecast = Forecast.get_forecast(lat,long)
      render :json => forecast.currently
    end
  end

end