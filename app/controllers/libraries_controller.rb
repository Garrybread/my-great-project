class LibrariesController < ApplicationController
    before_action :set_library, only: [:show, :edit, :update, :destroy]

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
    end

    def edit
    end

    def update
      if @library.update(library_params)
        redirect_to library_url(@library), notice: "Library was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end


    def destroy
      @library.destroy
      redirect_to libraries_url, notice: "Library was successfully deleted."
    end


    private

      def set_library
        @library = Library.find(params[:id])
      end

      def library_params
        params.require(:library).permit(:name, :address, :number, book_ids: [])
      end

end
