class DogWalksController < ApplicationController
  # GET /dog_walks
  # GET /dog_walks.json
  def index
    @dog_walks = DogWalk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dog_walks }
    end
  end

  # GET /dog_walks/1
  # GET /dog_walks/1.json
  def show
    @dog_walk = DogWalk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dog_walk }
    end
  end

  # GET /dog_walks/new
  # GET /dog_walks/new.json
  def new
    @dog_walk = DogWalk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dog_walk }
    end
  end

  # GET /dog_walks/1/edit
  def edit
    @dog_walk = DogWalk.find(params[:id])
  end

  # POST /dog_walks
  # POST /dog_walks.json
  def create
    @dog_walk = DogWalk.new(params[:dog_walk])

    respond_to do |format|
      if @dog_walk.save
        format.html { redirect_to @dog_walk, notice: 'Dog walk was successfully created.' }
        format.json { render json: @dog_walk, status: :created, location: @dog_walk }
      else
        format.html { render action: "new" }
        format.json { render json: @dog_walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dog_walks/1
  # PUT /dog_walks/1.json
  def update
    @dog_walk = DogWalk.find(params[:id])

    respond_to do |format|
      if @dog_walk.update_attributes(params[:dog_walk])
        format.html { redirect_to @dog_walk, notice: 'Dog walk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dog_walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_walks/1
  # DELETE /dog_walks/1.json
  def destroy
    @dog_walk = DogWalk.find(params[:id])
    @dog_walk.destroy

    respond_to do |format|
      format.html { redirect_to dog_walks_url }
      format.json { head :no_content }
    end
  end
end
