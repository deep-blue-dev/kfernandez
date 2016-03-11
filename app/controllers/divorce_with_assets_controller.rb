class DivorceWithAssetsController < ApplicationController
  before_action :set_divorce_with_asset, only: [:show, :edit, :update, :destroy]

  # GET /divorce_with_assets
  # GET /divorce_with_assets.json
  def index
    @divorce_with_assets = DivorceWithAsset.all
  end

  # GET /divorce_with_assets/1
  # GET /divorce_with_assets/1.json
  def show
  end

  # GET /divorce_with_assets/new
  def new
    @divorce_with_asset = DivorceWithAsset.new
  end

  # GET /divorce_with_assets/1/edit
  def edit
  end

  # POST /divorce_with_assets
  # POST /divorce_with_assets.json
  def create
    @divorce_with_asset = DivorceWithAsset.new(divorce_with_asset_params)

    respond_to do |format|
      if @divorce_with_asset.save
        format.html { redirect_to @divorce_with_asset, notice: 'Divorce with asset was successfully created.' }
        format.json { render :show, status: :created, location: @divorce_with_asset }
      else
        format.html { render :new }
        format.json { render json: @divorce_with_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divorce_with_assets/1
  # PATCH/PUT /divorce_with_assets/1.json
  def update
    respond_to do |format|
      if @divorce_with_asset.update(divorce_with_asset_params)
        format.html { redirect_to @divorce_with_asset, notice: 'Divorce with asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @divorce_with_asset }
      else
        format.html { render :edit }
        format.json { render json: @divorce_with_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divorce_with_assets/1
  # DELETE /divorce_with_assets/1.json
  def destroy
    @divorce_with_asset.destroy
    respond_to do |format|
      format.html { redirect_to divorce_with_assets_url, notice: 'Divorce with asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divorce_with_asset
      @divorce_with_asset = DivorceWithAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divorce_with_asset_params
      params.require(:divorce_with_asset).permit(:filing, :husband_name, :husband_address, :husband_city, :husband_state, :husband_zip, :husband_phone, :husband_fax, :husband_email, :wife_name, :wife_address, :wife_city, :wife_state, :wife_zip, :wife_phone, :wife_fax, :wife_email, :jurisdiction, :marriage_date, :separation_date, :dissolution)
    end
end
