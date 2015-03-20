class UniquesController < ApplicationController
  before_action :set_unique, only: [:show, :edit, :update, :destroy]

  # GET /uniques
  # GET /uniques.json
  def index
    @uniques = Unique.all
  end

  # GET /uniques/1
  # GET /uniques/1.json
  def show
  end

  # GET /uniques/new
  def new
    @unique = Unique.new
  end

  # GET /uniques/1/edit
  def edit
  end

  # POST /uniques
  # POST /uniques.json
  def create
    @unique = Unique.new(unique_params)

    respond_to do |format|
      if @unique.save
        format.html { redirect_to @unique, notice: 'Unique was successfully created.' }
        format.json { render :show, status: :created, location: @unique }
      else
        format.html { render :new }
        format.json { render json: @unique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniques/1
  # PATCH/PUT /uniques/1.json
  def update
    respond_to do |format|
      if @unique.update(unique_params)
        format.html { redirect_to @unique, notice: 'Unique was successfully updated.' }
        format.json { render :show, status: :ok, location: @unique }
      else
        format.html { render :edit }
        format.json { render json: @unique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniques/1
  # DELETE /uniques/1.json
  def destroy
    @unique.destroy
    respond_to do |format|
      format.html { redirect_to uniques_url, notice: 'Unique was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unique
      @unique = Unique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unique_params
      params.require(:unique).permit(:number, :batch_id)
    end
end
