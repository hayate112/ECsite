class Admins::ProductTypesController < ApplicationController
  
  def index
    @product_types = ProductTy.all
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def product_type_params
    params.require(:product_type).permit(:name)
  end
  
end
