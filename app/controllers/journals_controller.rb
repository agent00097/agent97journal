class JournalsController < ApplicationController

    before_action :set_journal, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @journals = Journal.all
    end

    def create
        @journal = Journal.new(journal_params)
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
    end

    def update
        if @journal.update(journal_params)
            flash[:notice] = "Journal updated"
            redirect_to @journal
        else
            render 'edit'
        end
    end

    def destroy
        @journal.destroy
        redirect_to journals_path
    end

    private
    def set_journal
        @journal = Journal.find(params[:id])
    end

    def journal_params
        params.require(:journal).permit(:title, :description)
    end

end