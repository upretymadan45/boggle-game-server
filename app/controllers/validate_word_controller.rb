class ValidateWordController < ApplicationController
    def index
        @word = params[:word]

        response = Request.where(@word)

        isFound = response.status ==200

        render json:isFound
    end
end
