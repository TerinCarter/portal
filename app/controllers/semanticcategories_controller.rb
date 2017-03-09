class SemanticcategoriesController < ApplicationController
  before_action :set_semanticcategory, only: [:show, :edit, :update, :destroy]

  # GET /semanticcategories
  # GET /semanticcategories.json
  def index
    @semanticcategories = Semanticcategory.all
  end

  # GET /semanticcategories/1
  # GET /semanticcategories/1.json
  def show
  end

  # GET /semanticcategories/new
  def new
    @semanticcategory = Semanticcategory.new
  end

  # GET /semanticcategories/1/edit
  def edit
  end

  # POST /semanticcategories
  # POST /semanticcategories.json
  def create
    @semanticcategory = Semanticcategory.new(semanticcategory_params)

    respond_to do |format|
      if @semanticcategory.save
        format.html { redirect_to @semanticcategory, notice: 'Semanticcategory was successfully created.' }
        format.json { render :show, status: :created, location: @semanticcategory }
      else
        format.html { render :new }
        format.json { render json: @semanticcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semanticcategories/1
  # PATCH/PUT /semanticcategories/1.json
  def update
    respond_to do |format|
      if @semanticcategory.update(semanticcategory_params)
        format.html { redirect_to @semanticcategory, notice: 'Semanticcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @semanticcategory }
      else
        format.html { render :edit }
        format.json { render json: @semanticcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semanticcategories/1
  # DELETE /semanticcategories/1.json
  def destroy
    @semanticcategory.destroy
    respond_to do |format|
      format.html { redirect_to semanticcategories_url, notice: 'Semanticcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semanticcategory
      @semanticcategory = Semanticcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semanticcategory_params
      params.require(:semanticcategory).permit(:name)
    end
end
