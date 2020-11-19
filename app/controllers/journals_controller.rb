class JournalsController < ApplicationController
    def show
        @journal = Journal.find(params[:id])
    end

    def index
        @journals = Journal.all
    end

    def create
        @journal = Journal.new(params.require(:journal).permit(:title, :description))
        if @journal.save
            flash[:notice] = "Journal was saved in the database"
            redirect_to @journal
        else
            render 'new'
        end
    end

    def new
        @journal = Journal.new
    end

    def edit
        @journal = Journal.find(params[:id])
    end

    def update
        @journal = Journal.find(params[:id])
        if @journal.update(params.require(:journal).permit(:title, :description))
            flash[:notice] = "Journal updated"
            redirect_to @journal
        else
            render 'edit'
        end
    end

    def destroy
        @journal = Journal.find(params[:id])
        @journal.destroy
        redirect_to journals_path
    end

end