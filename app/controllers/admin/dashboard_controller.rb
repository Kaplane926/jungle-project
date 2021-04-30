class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  def show
    @products = Product.all
    @categories = Category.all
    puts @products.count
    puts @categories.count
  end
end
