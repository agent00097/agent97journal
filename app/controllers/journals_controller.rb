class JournalsController < ApplicationController
    def show
        @journal = Journal.find(params[:id])
    end
end