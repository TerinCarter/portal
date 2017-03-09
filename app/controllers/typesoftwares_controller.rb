class TypesoftwaresController < ApplicationController
  before_action :set_typesoftware, only: [:show, :edit, :update, :destroy]

  # GET /typesoftwares
  # GET /typesoftwares.json
  def index
    @typesoftwares = Typesoftware.all
  end

  # GET /typesoftwares/1
  # GET /typesoftwares/1.json
  def show
  end

  # GET /typesoftwares/new
  def new
    @typesoftware = Typesoftware.new
  end

  # GET /typesoftwares/1/edit
  def edit
  end

  # POST /typesoftwares
  # POST /typesoftwares.json
  def create
    @typesoftware = Typesoftware.new(typesoftware_params)

    respond_to do |format|
      if @typesoftware.save
        format.html { redirect_to @typesoftware, notice: 'Typesoftware was successfully created.' }
        format.json { render :show, status: :created, location: @typesoftware }
      else
        format.html { render :new }
        format.json { render json: @typesoftware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typesoftwares/1
  # PATCH/PUT /typesoftwares/1.json
  def update
    respond_to do |format|
      if @typesoftware.update(typesoftware_params)
        format.html { redirect_to @typesoftware, notice: 'Typesoftware was successfully updated.' }
        format.json { render :show, status: :ok, location: @typesoftware }
      else
        format.html { render :edit }
        format.json { render json: @typesoftware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typesoftwares/1
  # DELETE /typesoftwares/1.json
  def destroy
    @typesoftware.destroy
    respond_to do |format|
      format.html { redirect_to typesoftwares_url, notice: 'Typesoftware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typesoftware
      @typesoftware = Typesoftware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typesoftware_params
      params.require(:typesoftware).permit(:name)
    end
end
