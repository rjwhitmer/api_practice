class MembersController < ApplicationController
    def index
        @members = Member.all
        render json: @members
    end

    def show 
        @member = Member.find(params[:id])
        render json: @member
    end

    def create
        Member.create({
            name: params[:name],
            instrument: params[:instrument],
            age: params[:age]
        })
    end
end
