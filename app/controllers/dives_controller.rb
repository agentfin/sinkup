class DivesController < ApplicationController
  # GET /dives
  # GET /dives.json
  def index
    @dives = Dive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dives }
    end
  end

  # GET /dives/1
  # GET /dives/1.json
  def show
    @dife = Dive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dife }
    end
  end

  # GET /dives/new
  # GET /dives/new.json
  def new
    @dife = Dive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dife }
    end
  end

  # GET /dives/1/edit
  def edit
    @dife = Dive.find(params[:id])
  end

  # POST /dives
  # POST /dives.json
  def create
    @dife = Dive.new(params[:dife])

    respond_to do |format|
      if @dife.save
        format.html { redirect_to @dife, notice: 'Dive was successfully created.' }
        format.json { render json: @dife, status: :created, location: @dife }
      else
        format.html { render action: "new" }
        format.json { render json: @dife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dives/1
  # PUT /dives/1.json
  def update
    @dife = Dive.find(params[:id])

    respond_to do |format|
      if @dife.update_attributes(params[:dife])
        format.html { redirect_to @dife, notice: 'Dive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dives/1
  # DELETE /dives/1.json
  def destroy
    @dife = Dive.find(params[:id])
    @dife.destroy

    respond_to do |format|
      format.html { redirect_to dives_url }
      format.json { head :no_content }
    end
  end
end
