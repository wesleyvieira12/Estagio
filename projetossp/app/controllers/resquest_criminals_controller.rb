class ResquestCriminalsController < ApplicationController
  before_action :set_resquest_criminal, only: [:show, :edit, :update, :destroy]

  # GET /resquest_criminals
  # GET /resquest_criminals.json
  def index
    @resquest_criminals = ResquestCriminal.all
  end

  # GET /resquest_criminals/1
  # GET /resquest_criminals/1.json
  def show
    impressionist @resquest_criminal
  end

  # GET /resquest_criminals/new
  def new
    @resquest_criminal = ResquestCriminal.new
  end

  # GET /resquest_criminals/1/edit
  def edit
  end

  # POST /resquest_criminals
  # POST /resquest_criminals.json
  def create
    @resquest_criminal = ResquestCriminal.new()
     
    @resquest_criminal.district_send = District.find params[:resquest_criminal][:district_send]
    @resquest_criminal.person_id= params[:resquest_criminal][:person_id]
    @resquest_criminal.resquest_type= params[:resquest_criminal][:resquest_type]

    # Nessa linha a requisição atual é setada com o ID do usuário atual
    @resquest_criminal.user_id = current_user.id
    @resquest_criminal.district_resquest = current_user.district
    respond_to do |format|
      if @resquest_criminal.save
        format.html { redirect_to @resquest_criminal, notice: 'Resquest criminal was successfully created.' }
        format.json { render :show, status: :created, location: @resquest_criminal }
      else
        format.html { render :new }
        format.json { render json: @resquest_criminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resquest_criminals/1
  # PATCH/PUT /resquest_criminals/1.json
  def update
    respond_to do |format|
      if @resquest_criminal.update(resquest_criminal_params)
        format.html { redirect_to @resquest_criminal, notice: 'Resquest criminal was successfully updated.' }
        format.json { render :show, status: :ok, location: @resquest_criminal }
      else
        format.html { render :edit }
        format.json { render json: @resquest_criminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resquest_criminals/1
  # DELETE /resquest_criminals/1.json
  def destroy
    @resquest_criminal.destroy
    respond_to do |format|
      format.html { redirect_to resquest_criminals_url, notice: 'Resquest criminal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resquest_criminal
      @resquest_criminal = ResquestCriminal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resquest_criminal_params
      params.require(:resquest_criminal).permit(:district_resquest, :district_send, :user_id, :type, :person_id)
    end
end
