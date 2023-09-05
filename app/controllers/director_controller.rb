class DirectorController < ApplicationController
    def index_directores
        @lista = Director.all
        render json: @lista
    end

    def create_director
        @dir = Director.new(dire_params)
        if @dir.save
          render json: @dir
        else
          render json: @dir.errors, status: :unprocessable_entity
        end
    end
      
    def dire_params
        params.require(:director).permit(:name, :age, :country, :has_oscars)
    end

    def id_director
        @dir = Director.find(params[:id])
        render json: @dir
    end

    def erase_dir
        begin
          @dir = Director.find(params[:id])
          @dir.destroy
          mensaje = "Se ha eliminado un director de la base de datos"
          render json: mensaje

          # Lógica adicional si es necesario
        rescue ActiveRecord::RecordNotFound
          # Manejo de error si no se encuentra el registro
        end
    end

    def erase_dirs
        begin
          @dir = Director.destroy_all
          mensaje = "Se han eliminado todos los directores de la base de datos"
          render json: mensaje

          # Lógica adicional si es necesario
        rescue ActiveRecord::RecordNotFound
          # Manejo de error si no se encuentra el registro
        end
    end

    def oscars
        @oscars_dirs = Director.where(has_oscars: true).pluck(:name)
        render json: @oscars_dirs
    end

end
      
