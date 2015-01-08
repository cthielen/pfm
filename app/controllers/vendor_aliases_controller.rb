class VendorAliasesController < ApplicationController
  before_action :set_vendor_alias, only: [:show, :edit, :update, :destroy]

  # GET /vendor_aliases
  # GET /vendor_aliases.json
  def index
    @vendor_aliases = VendorAlias.all
  end

  # GET /vendor_aliases/1
  # GET /vendor_aliases/1.json
  def show
  end

  # GET /vendor_aliases/new
  def new
    @vendor_alias = VendorAlias.new
  end

  # GET /vendor_aliases/1/edit
  def edit
  end

  # POST /vendor_aliases
  # POST /vendor_aliases.json
  def create
    @vendor_alias = VendorAlias.new(vendor_alias_params)

    respond_to do |format|
      if @vendor_alias.save
        format.html { redirect_to @vendor_alias, notice: 'Vendor alias was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_alias }
      else
        format.html { render :new }
        format.json { render json: @vendor_alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_aliases/1
  # PATCH/PUT /vendor_aliases/1.json
  def update
    respond_to do |format|
      if @vendor_alias.update(vendor_alias_params)
        format.html { redirect_to @vendor_alias, notice: 'Vendor alias was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_alias }
      else
        format.html { render :edit }
        format.json { render json: @vendor_alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_aliases/1
  # DELETE /vendor_aliases/1.json
  def destroy
    @vendor_alias.destroy
    respond_to do |format|
      format.html { redirect_to vendor_aliases_url, notice: 'Vendor alias was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_alias
      @vendor_alias = VendorAlias.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_alias_params
      params.require(:vendor_alias).permit(:alias)
    end
end
