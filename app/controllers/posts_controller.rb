class PostsController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @posts = @movie.posts
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @post = Post.find(params[:id])
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @post = @movie.posts.build
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @post = Post.new(params[:post])
    if @post.save!
      redirect_to movie_posts_path(@movie)
    else
      render :new
    end
  end
  
  def edit
    @movie = Movie.find(params[:movie_id])
    @post = Post.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post])
      redirect_to movie_posts_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to movie_posts_path(@movie)
  end
end
