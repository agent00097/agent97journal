class JournalsController < ApplicationController
    def show
        @journal = Journal.find(params[:id])
    end
    def index
        @journals = Journal.all
    end
end