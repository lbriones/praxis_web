class InstitucionsController < ApplicationController
  # GET /institucions
  # GET /institucions.json
  def index
    @institucions = Institucion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institucions }
    end
  end

  # GET /institucions/1
  # GET /institucions/1.json
  def show
    @institucion = Institucion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institucion }
    end
  end

  # GET /institucions/new
  # GET /institucions/new.json
  def new
    @institucion = Institucion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @institucion }
    end
  end

  # GET /institucions/1/edit
  def edit
    @institucion = Institucion.find(params[:id])
  end

  # POST /institucions
  # POST /institucions.json
  def create
    @institucion = Institucion.new(params[:institucion])

    respond_to do |format|
      if @institucion.save
        format.html { redirect_to @institucion, notice: 'Institucion was successfully created.' }
        format.json { render json: @institucion, status: :created, location: @institucion }
      else
        format.html { render action: "new" }
        format.json { render json: @institucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /institucions/1
  # PUT /institucions/1.json
  def update
    @institucion = Institucion.find(params[:id])

    respond_to do |format|
      if @institucion.update_attributes(params[:institucion])
        format.html { redirect_to @institucion, notice: 'Institucion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @institucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institucions/1
  # DELETE /institucions/1.json
  def destroy
    @institucion = Institucion.find(params[:id])
    @institucion.destroy

    respond_to do |format|
      format.html { redirect_to institucions_url }
      format.json { head :no_content }
    end
  end
end
