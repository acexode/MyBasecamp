class DisquxesController < ApplicationController
  before_action :set_disqux, only: [:show, :edit, :update, :destroy]
  before_action :set_params

 
  # GET /disquxes
  # GET /disquxes.json
 
  def index
     @disquxes = Disqux.all
    #  @project = params[:project_id]
      # render plain: params.inspect
    end
    
    # GET /disquxes/1
    # GET /disquxes/1.json
    def show
      @project =  Project.find(params[:id])
      @disquxes = Disqux.all
      # render plain: @disquxes.inspect
    end
    
    # GET /disquxes/new
    def new
      @disqux = Disqux.new     
      # @project = Project.find(3)
      # @disqux = @project.disquxes.build
    end
    
    # GET /disquxes/1/edit
    def edit    
    end

  # POST /disquxes
  # POST /disquxes.json
  def create
    @project = Project.find(params[:project_id])
    @disqux = @project.disquxes.new(disqux_params)
    # render plain: @disqux.inspect
    
    respond_to do |format|
      if @disqux.save
        format.html { redirect_to project_disquxes_path(@project), notice: 'Disqux was successfully created.' }
        format.json { render :show, status: :created, location: @disqux }
      else
        format.html { render :new }
        format.json { render json: @disqux.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disquxes/1
  # PATCH/PUT /disquxes/1.json
  def update
    respond_to do |format|
      if @disqux.update(disqux_params)
        format.html { redirect_to project_disquxes_path(@project), notice: 'Disqux was successfully updated.' }
        format.json { render :show, status: :ok, location: @disqux }
      else
        format.html { render :edit }
        format.json { render json: @disqux.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disquxes/1
  # DELETE /disquxes/1.json
  def destroy
    # render plain: @disqux.inspect
     @disqux.destroy
    respond_to do |format|
      format.html { redirect_to project_disquxes_path(@project), notice: 'Disqux was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disqux
      @disqux = Disqux.find(params[:id])
    end
    def set_params
      @project = params[:project_id]
      @disqux_id = params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disqux_params
      params.require(:disqux).permit(:title)
    end
end
