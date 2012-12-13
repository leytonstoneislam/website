class HomepageentriesController < ApplicationController
  before_filter :validate_authentication
  # GET /homepageentries
  # GET /homepageentries.json
  def index
    @homepageentries = Homepageentry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homepageentries }
    end
  end

  # GET /homepageentries/1
  # GET /homepageentries/1.json
  def show
    @homepageentry = Homepageentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @homepageentry }
    end
  end

  # GET /homepageentries/new
  # GET /homepageentries/new.json
  def new
    @homepageentry = Homepageentry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @homepageentry }
    end
  end

  # GET /homepageentries/1/edit
  def edit
    @homepageentry = Homepageentry.find(params[:id])
  end

  # POST /homepageentries
  # POST /homepageentries.json
  def create
    @homepageentry = Homepageentry.new(params[:homepageentry])

    respond_to do |format|
      if @homepageentry.save
        format.html { redirect_to @homepageentry, notice: 'Homepageentry was successfully created.' }
        format.json { render json: @homepageentry, status: :created, location: @homepageentry }
      else
        format.html { render action: "new" }
        format.json { render json: @homepageentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /homepageentries/1
  # PUT /homepageentries/1.json
  def update
    @homepageentry = Homepageentry.find(params[:id])

    respond_to do |format|
      if @homepageentry.update_attributes(params[:homepageentry])
        format.html { redirect_to @homepageentry, notice: 'Homepage entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @homepageentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepageentries/1
  # DELETE /homepageentries/1.json
  def destroy
    @homepageentry = Homepageentry.find(params[:id])
    @homepageentry.destroy

    respond_to do |format|
      format.html { redirect_to homepageentries_url }
      format.json { head :no_content }
    end
  end



end
