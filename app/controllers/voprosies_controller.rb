class VoprosiesController < ApplicationController
  # GET /voprosies
  # GET /voprosies.json
  def index
    @voprosies = Voprosy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voprosies }
    end
  end

  # GET /voprosies/1
  # GET /voprosies/1.json
  def show
    @voprosy = Voprosy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voprosy }
    end
  end

  # GET /voprosies/new
  # GET /voprosies/new.json
  def new
    @voprosy = Voprosy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voprosy }
    end
  end

  # GET /voprosies/1/edit
  def edit
    @voprosy = Voprosy.find(params[:id])
  end

  # POST /voprosies
  # POST /voprosies.json
  def create
    @voprosy = Voprosy.new(params[:voprosy])

    respond_to do |format|
      if @voprosy.save
        format.html { redirect_to @voprosy, notice: 'Voprosy was successfully created.' }
        format.json { render json: @voprosy, status: :created, location: @voprosy }
      else
        format.html { render action: "new" }
        format.json { render json: @voprosy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voprosies/1
  # PUT /voprosies/1.json
  def update
    @voprosy = Voprosy.find(params[:id])

    respond_to do |format|
      if @voprosy.update_attributes(params[:voprosy])
        format.html { redirect_to @voprosy, notice: 'Voprosy was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @voprosy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voprosies/1
  # DELETE /voprosies/1.json
  def destroy
    @voprosy = Voprosy.find(params[:id])
    @voprosy.destroy

    respond_to do |format|
      format.html { redirect_to voprosies_url }
      format.json { head :ok }
    end
  end
end
