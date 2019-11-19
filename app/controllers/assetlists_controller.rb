class AssetlistsController < ApplicationController
  before_action :set_assetlist, only: [:show, :edit, :update, :destroy]

  # GET /assetlists
  # GET /assetlists.json
  def index
    #@assetlists = Assetlist.all
    @assetlists = Assetlist.all.paginate(page: params[:page], per_page: 10)
  end

  # GET /assetlists/1
  # GET /assetlists/1.json
  def show
  end

  # GET /assetlists/new
  def new
    @assetlist = Assetlist.new
  end

  # GET /assetlists/1/edit
  def edit
  end

  # POST /assetlists
  # POST /assetlists.json
  def create
    @assetlist = Assetlist.new(assetlist_params)

    respond_to do |format|
      if @assetlist.save
        format.html { redirect_to @assetlist, notice: 'Assetlist was successfully created.' }
        format.json { render :show, status: :created, location: @assetlist }
      else
        format.html { render :new }
        format.json { render json: @assetlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assetlists/1
  # PATCH/PUT /assetlists/1.json
  def update
    respond_to do |format|
      if @assetlist.update(assetlist_params)
        format.html { redirect_to @assetlist, notice: 'Assetlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @assetlist }
      else
        format.html { render :edit }
        format.json { render json: @assetlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assetlists/1
  # DELETE /assetlists/1.json
  def destroy
    @assetlist.destroy
    respond_to do |format|
      format.html { redirect_to assetlists_url, notice: 'Assetlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assetlist
      @assetlist = Assetlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assetlist_params
      params.require(:assetlist).permit(:mgmtno, :dept, :username, :devicetype, :purpose, :manufacture, :modelno, :serialno, :description, :ram, :disk, :os, :hostname, :ipaddr, :gateway, :mac_wire, :mac_wireless, :date_buy, :date_produce, :amt_buy, :remarks)
    end
end