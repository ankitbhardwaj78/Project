class MaterialsController < ApplicationController

  before_action :set_material, only: [:show, :edit, :update, :destroy ,:download]
  before_action :authenticate_user!, only: [:edit, :update, :destroy,:new, :create]

  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end


  def download
    puts params
    extension=@material.file.split('.')
    send_file Rails.root.join('public','uploadedfiles',@material.file),
    :type=>"application/#{extension[1]}", :x_sendfile=>true
  end


  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    puts params
    #params.permit(:file,:semester, :branch, :subject, :category, :title)
    @material = Material.new(material_params)
    filename=params[:material][:file]
    File.open(Rails.root.join('public','uploadedfiles',filename.original_filename), 'wb') do |file|
      file.write(filename.read)
    end
    # uploaded_file = material_params[:file]
    # filepath = Dir.pwd + "/public/uploadedfiles/" + filename
    # File.open(filepath,'wb') do |file|
    #   file.write(uploaded_file.read())
    # end

    @material.file=filename.original_filename
    @material.user_id=current_user.id
    respond_to do |format|
      if @material.save
        format.html { redirect_to @material, notice: 'Material was successfully created.' }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materials_url, notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:semester, :branch, :subject, :category, :title, :file)
    end
  end
