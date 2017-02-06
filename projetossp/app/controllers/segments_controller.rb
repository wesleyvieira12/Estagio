class SegmentsController < ApplicationController
  before_action :set_segment, only: [:show, :edit, :update, :destroy]

  # GET /segments
  # GET /segments.json
  def index
    authorize :segment, :index?
    #@segments = Segment.all

    @q = Segment.ransack(params[:q])
    @segments = @q.result

    @segments = @segments.paginate(:page => params[:page], :per_page => 7)
  end

  # GET /segments/1
  # GET /segments/1.json
  def show
    authorize :segment, :show?
  end

  # GET /segments/new
  def new
    authorize :segment, :new?
    @segment = Segment.new
  end

  # GET /segments/1/edit
  def edit
    authorize :segment, :edit?
  end

  # POST /segments
  # POST /segments.json
  def create
    authorize :segment, :create?
    @segment = Segment.new(segment_params)

    respond_to do |format|
      if @segment.save
        format.html { redirect_to @segment, notice: 'Segment was successfully created.' }
        format.json { render :show, status: :created, location: @segment }
      else
        format.html { render :new }
        format.json { render json: @segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segments/1
  # PATCH/PUT /segments/1.json
  def update
    authorize :segment, :update?
    respond_to do |format|
      if @segment.update(segment_params)
        format.html { redirect_to @segment, notice: 'Segment was successfully updated.' }
        format.json { render :show, status: :ok, location: @segment }
      else
        format.html { render :edit }
        format.json { render json: @segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segments/1
  # DELETE /segments/1.json
  def destroy
    authorize :segment, :destroy?
    @segment.destroy
    respond_to do |format|
      format.html { redirect_to segments_url, notice: 'Segment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment
      @segment = Segment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def segment_params
      params.require(:segment).permit(:name, :description)
    end
end
