class Admins::ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admins_products_path
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admins_products_path
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_type_id, :name, :description, :price, :image, :is_active)
  end

end
