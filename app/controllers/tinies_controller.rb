class TiniesController < ApplicationController
  # GET /tinies
  # GET /tinies.json
  def index
    @tinies = Tiny.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tinies }
    end
  end

  # GET /tinies/1
  # GET /tinies/1.json
  def show
    @tiny = Tiny.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tiny }
    end
  end

  # GET /tinies/new
  # GET /tinies/new.json
  def new
    @tiny = Tiny.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tiny }
    end
  end

  # GET /tinies/1/edit
  def edit
    @tiny = Tiny.find(params[:id])
  end

  # POST /tinies
  # POST /tinies.json
  def create
    @tiny = Tiny.new(params[:tiny])

    respond_to do |format|
      if @tiny.save
        format.html { redirect_to @tiny, notice: 'Tiny was successfully created.' }
        format.json { render json: @tiny, status: :created, location: @tiny }
      else
        format.html { render action: "new" }
        format.json { render json: @tiny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tinies/1
  # PUT /tinies/1.json
  def update
    @tiny = Tiny.find(params[:id])

    respond_to do |format|
      if @tiny.update_attributes(params[:tiny])
        format.html { redirect_to @tiny, notice: 'Tiny was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tiny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tinies/1
  # DELETE /tinies/1.json
  def destroy
    @tiny = Tiny.find(params[:id])
    @tiny.destroy

    respond_to do |format|
      format.html { redirect_to tinies_url }
      format.json { head :no_content }
    end
  end

  def myurl
    tiny=Tiny.find_by_tiny(params[:id])
    redirect_to "#{tiny.url}"
  end

  def fb_creae
    puts 111111111111111111111111111111
    puts request.env['omniauth.auth']
    puts 222222222222222222222222222222
    redirect_to tinies_path
  end
end
