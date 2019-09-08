class DslistsController < ApplicationController
  before_action :set_dslist, only: [:show, :edit, :update, :destroy]

  # GET /dslists
  # GET /dslists.json

  def index

    @dslists = Dslist.all.paginate(page: params[:page], per_page: 10)
    # if params[:lastT].present? 
    #   @dslists = Dslist.find_each(:start =>params[:lastT]  ).take(5)
    # else
    #   @dslists = Dslist.find_each(:start => params[:firstid] ).take(5)
    #   # @dslists = Dslist.all.take(5)
    # end

  end


  # GET /dslists/1
  # GET /dslists/1.json
  def show
  end

  # GET /dslists/new
  def new
    @dslist = Dslist.new
  end

  # GET /dslists/1/edit
  def edit
  end

  # POST /dslists
  # POST /dslists.json
  def create
    @dslist = Dslist.new(dslist_params)

    respond_to do |format|
      if @dslist.save
        format.html { redirect_to @dslist, notice: 'Dslist was successfully created.' }
        format.json { render :show, status: :created, location: @dslist }
      else
        format.html { render :new }
        format.json { render json: @dslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dslists/1
  # PATCH/PUT /dslists/1.json
  def update
    respond_to do |format|
      if @dslist.update(dslist_params)
        format.html { redirect_to @dslist, notice: 'Dslist was successfully updated.' }
        format.json { render :show, status: :ok, location: @dslist }
      else
        format.html { render :edit }
        format.json { render json: @dslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dslists/1
  # DELETE /dslists/1.json
  def destroy
    @dslist.destroy
    respond_to do |format|
      format.html { redirect_to dslists_url, notice: 'Dslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dslist
      @dslist = Dslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dslist_params
      params.require(:dslist).permit(:Index_no, :g_no, :g_year, :name, :company, :company_part, :company_title, :company_address, :company_tel, :home_address, :home_tel, :mobile, :confirm)
    end
end
