class LibrariesController < ApplicationController
    

    def index
        @libraries = Library.all
    end

    def create
        @library = Library.new(library_params)

      if @library.save
        redirect_to library_url(@library), notice: "Library was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def new
        @library = Library.new
    end

    def show
        @library = Library.find(params[:id])
    end

    def edit
    end

    private

        def library_params
            params.require(:library).permit(:name, :address, :number)
        end

end
