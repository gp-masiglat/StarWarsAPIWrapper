module Api
    class StarWarsController < ApplicationController
        def characters
            render json: StarWarsApi.fetch_data('/people')
        end

        def planets
            render json: StarWarsApi.fetch_data('/planets')
        end

        def starships
            render json: StarWarsApi.fetch_data('/starships')
        end

        def films
            render json: StarWarsApi.fetch_data('/films')
        end

        def species
            render json: StarWarsApi.fetch_data('/species')
        end

        def vehicles
            render json: StarWarsApi.fetch_data('/vehicles')
        end
    end
end