class Api::V1::CategoriesController < Api::V1::ApiController

  def index
    categories = Category.all
    render json: categories.to_json()
  end

 def show
    category = Category.find(params[:id])
    render json: category.to_json()
  end

  def create
    category = Category.new(category_params)
    if category.save
      render status: 200, json: {
        message: "New category created",
        category: category
      }.to_json
    else
      render status: 422, json: {
        message: "Category could not be created",
        errors: category.errors
      }.to_json
    end
  end

  def update
    category = Category.find(params[:id])
    if category.update(category_params)
      render status: 200, json: {
        message: "Successfully updated category.",
        category: category
      }.to_json
    else
      render status: 422, json: {
        message: "Category update failed.",
        errors: category.errors
      }.to_json
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    render status: 200, json: {
      message: "Category successfully deleted.",
      category: category
    }.to_json
  end

  private
  def category_params
    params.permit(:name, :types, :path_img)
  end

end
