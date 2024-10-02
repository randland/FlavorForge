module Admin
  class RecipesController < AdminBaseController
    def index
      @recipes = Recipe.all
    end

    def show
      @recipe = Recipe.find(params[:id])
    end

    def new
      @recipe = Recipe.new
    end

    def create
      @recipe = Recipe.create!(recipe_params)

      render :show
    end

    def edit
      @recipe = Recipe.find(params[:id])
    end

    def update
      @recipe = Recipe.find(params[:id])
      if @recipe.update!(recipe_params)
        render :show
      else
        raise "foo"
      end
    end

    private

    def recipe_params
      params.require(:recipe).permit!
    end
  end
end
