class BandsController < ApplicationController
    def index
        @bands = Band.all
        render json: @bands, include: [:members]
    end

    def show
        @band = Band.find(params[:id])
        render json: @band
    end

    def create 
        Band.create({
            name: params[:name],
            genre: params[:genre],
            year_established: params[:year_established]
        })
    end
end
