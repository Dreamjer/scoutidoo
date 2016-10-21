class ScoutsController < ApplicationController
  before_action :set_scout, only: [:show, :edit, :update, :destroy]
  before_action :find_all_groups,  :find_all_teams
  # GET /scouts
  # GET /scouts.json
  def index
    @scouts = Scout.all
  end

  # GET /scouts/1
  # GET /scouts/1.json
  def show
  end

  # GET /scouts/new
  def new
    @scout = Scout.new
  end

  # GET /scouts/1/edit
  def edit
  end

  # POST /scouts
  # POST /scouts.json
  def create
    @scout = Scout.new(scout_params)

    respond_to do |format|
      if @scout.save
        format.html { redirect_to @scout, notice: t('notice_created', obj: t('label', scope: 'activerecord.attributes.scout'), name: params[:scout][:full_name]) }
        format.json { render :show, status: :created, location: @scout }
      else
        format.html { render :new }
        format.json { render json: @scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scouts/1
  # PATCH/PUT /scouts/1.json
  def update
    respond_to do |format|
      if @scout.update(scout_params)
        format.html { redirect_to @scout, notice: t('notice_updated', obj: t('label', scope: 'activerecord.attributes.scout'), name: @scout.full_name) }
        format.json { render :show, status: :ok, location: @scout }
      else
        format.html { render :edit }
        format.json { render json: @scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scouts/1
  # DELETE /scouts/1.json
  def destroy
    @scout.destroy
    respond_to do |format|
      format.html { redirect_to scouts_url, notice: t('notice_deleted', obj: t('label', scope: 'activerecord.attributes.scout'), name: @scout.full_name) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scout
      @scout = Scout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scout_params
      params.require(:scout).permit(:email, :firstname, :lastname, :address, :phonehome, :phonemobile, :birth_date, :level_id, :team_id, :group_id, :code, :notes, :school, :manager)
    end

    def find_all_groups
      @groups = Group.all.order('name desc')
    end

    def find_all_teams
      @teams = Team.all.order('name desc')
    end
end
