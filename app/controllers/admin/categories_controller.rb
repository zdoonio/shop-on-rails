class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path, notice: "Pomyślnie dodano kategorię"
    else
      render action: :new
    end
  end

  def edit
    @category = Product.find(params[:id])
  end

  def update
    @category = Product.find(params[:id])
    if @product.update_attributes(category_params)
      redirect_to admin_categories_path, notice: "Pomyślnie zaktualizowano kategorię"
    else
      render action: :edit
    end
  end

  def destroy
    @category = Product.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path, notice: "Kategorię pomyślnie usunięto."
  end

  private

  def category_params
    params.require(:product).permit(
        :name
    )
  end
end
