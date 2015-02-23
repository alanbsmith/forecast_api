class Forecast < ActiveRecord::Base

  def self.get_forecast(lat,long)
    ForecastIO.configure do |config|
      config.api_key = "forecast_api_key"
    end

    ForecastIO.forecast(lat,long)
  end
end
