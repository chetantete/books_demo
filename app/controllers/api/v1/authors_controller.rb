# class Api::V1::AuthorsController < ApplicationController
class Api::V1::AuthorsController < ApplicationController
# class Api::Authors < Api::V1::ApiController
  def index
    @authors = Author.all
    render :json => {authors: @authors}
  end

  def show
    @author = Author.find(params[:id]) rescue "No author found with #{params[:id]} id"
    @books = @author=="No author found with #{params[:id]} id" ? "No books" :  @author.books
     render :json => {authors: @author, books: @books}
  end
end
