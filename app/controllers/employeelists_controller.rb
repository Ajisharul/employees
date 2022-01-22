class EmployeelistsController < ApplicationController
  before_action :set_employeelist, only: %i[ show edit update destroy ]

  # GET /employeelists or /employeelists.json
  def index
    @employeelists = Employeelist.all
  end

  # GET /employeelists/1 or /employeelists/1.json
  def show
  end

  # GET /employeelists/new
  def new
    @employeelist = Employeelist.new
  end

  # GET /employeelists/1/edit
  def edit
  end

  # POST /employeelists or /employeelists.json
  def create
    @employeelist = Employeelist.new(employeelist_params)

    respond_to do |format|
      if @employeelist.save
        format.html { redirect_to employeelist_url(@employeelist), notice: "Employeelist was successfully created." }
        format.json { render :show, status: :created, location: @employeelist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employeelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeelists/1 or /employeelists/1.json
  def update
    respond_to do |format|
      if @employeelist.update(employeelist_params)
        format.html { redirect_to employeelist_url(@employeelist), notice: "Employeelist was successfully updated." }
        format.json { render :show, status: :ok, location: @employeelist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employeelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeelists/1 or /employeelists/1.json
  def destroy
    @employeelist.destroy

    respond_to do |format|
      format.html { redirect_to employeelists_url, notice: "Employeelist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeelist
      @employeelist = Employeelist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeelist_params
      params.require(:employeelist).permit(:employee_name, :string, :age, :string, :gender, :string, :designation, :string)
    end
end
