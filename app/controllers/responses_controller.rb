class ResponsesController < ApplicationController
  before_action :set_response, only: %i[ show edit update destroy ]

  # MA: Sortable table columns [http://railscasts.com/episodes/228-sortable-table-columns]
  helper_method :sort_column, :sort_direction

  # GET /responses or /responses.json
  def index
    # MA: Commenting out to try sortable table columns attempt:
      # @responses = Response.all
    # MA: Sortable table columns [http://railscasts.com/episodes/228-sortable-table-columns]
    @responses = Response.order(sort_column + " " + sort_direction)
  end

  # GET /responses/1 or /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @response = Response.new
  end

  # GET /responses/1/edit
  def edit
  end

  # POST /responses or /responses.json
  # MA: (Excel) ="Response.create!("&$B$2&": "&CHAR(34)&$B4&CHAR(34)&", "&$C$2&": "&$C4&", "&$D$2&": "&$D4&", "&$E$2&": "&$E4&", "&$F$2&": "&CHAR(34)&$F4&CHAR(34)&", "&$G$2&": "&$G4&", "&$H$2&": "&$H4&", "&$I$2&": "&$I4&", "&$J$2&": "&$J4&", "&$K$2&": "&$K4&", "&$L$2&": "&CHAR(34)&$L4&CHAR(34)&", "&$M$2&": "&CHAR(34)&$M4&CHAR(34)&")"
  # MA: (irb>)  Response.create!(undergrad_continent: "Europe", hb_a_1_1: 10, hb_a_2_1: 50, hb_a_3_1: 300, dem_1: "A lot (e.g. \"I have thought enough to have my own views on the topic\")", vb_1_1: 64, vb_1_2: 20, vb_1_3: 3, vb_1_4: 3, vb_1_5: 10, dem_2: "A lot (e.g. \"I have thought enough to have my own views on the topic\")", sr_1: "More")
  def create
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to response_url(@response), notice: "Response was successfully created." }
        format.json { render :show, status: :created, location: @response }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responses/1 or /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html { redirect_to response_url(@response), notice: "Response was successfully updated." }
        format.json { render :show, status: :ok, location: @response }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1 or /responses/1.json
  def destroy
    @response.destroy

    respond_to do |format|
      format.html { redirect_to responses_url, notice: "Response was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def response_params
      params.require(:response).permit(:undergrad_continent, :hb_a_1_1, :hb_a_2_1, :hb_a_3_1, :dem_1, :vb_1_1, :vb_1_2, :vb_1_3, :vb_1_4, :vb_1_5, :dem_2, :sr_1)
    end
  
    # MA: Sortable table columns [http://railscasts.com/episodes/228-sortable-table-columns]
    def sort_column
      Response.column_names.include?(params[:sort]) ? params[:sort] : "id"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
