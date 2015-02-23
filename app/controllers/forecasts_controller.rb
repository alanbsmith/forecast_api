class ForecastsController < ApplicationController

  def show
    location = Geocoder.search(params[:id]).first
    lat      = location.geometry['location']['lat']
    long     = location.geometry['location']['lng']
    forecast = Forecast.get_forecast(lat,long)
    render :json => forecast.currently
  end

end