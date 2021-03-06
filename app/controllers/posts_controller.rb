class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    if params[:tag]
      @posts = Post.search(params[:search])
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end
  end
  
  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  def postular
    @post = Post.find(params[:id])
    @user = User.find(current_user.id)

    respond_to do |format|
      UserMailer.postulacion(@post, @user).deliver
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    @user = User.find(current_user.id)
      UserMailer.postulacion(@post, @user).deliver
    respond_to do |format|
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      
        format.html { render action: "index" }
        
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @user = User.all

    respond_to do |format|
      if @post.save
        @user.each do |user|
          UserMailer.recomendacion(@post, user).deliver
        end
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        #format.json { render json: @post, status: :created, location: @post }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
