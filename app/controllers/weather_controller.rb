require 'open-uri'
class WeatherController < ApplicationController

    def search
    end

    def conditions
        @city = params[:city]
        @url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city}&units=imperial")
        @json_data = open(@url).read
        @data = JSON.parse(@json_data)

        @city2 = "Sydney, AU"
        @url2 = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city2}&units=imperial")
        @json_data2 = open(@url2).read
        @data2 = JSON.parse(@json_data2)
    end

end
