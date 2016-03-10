class NoChildrenNoDebtsController < ApplicationController
  before_action :set_no_children_no_debt, only: [:show, :edit, :update, :destroy]

  # GET /no_children_no_debts
  # GET /no_children_no_debts.json
  def index
    @no_children_no_debts = NoChildrenNoDebt.all
  end

  # GET /no_children_no_debts/1
  # GET /no_children_no_debts/1.json
  def show
  end

  # GET /no_children_no_debts/new
  def new
    @no_children_no_debt = NoChildrenNoDebt.new
  end

  # GET /no_children_no_debts/1/edit
  def edit
  end

  # POST /no_children_no_debts
  # POST /no_children_no_debts.json
  def create
    @no_children_no_debt = NoChildrenNoDebt.new(no_children_no_debt_params)

    respond_to do |format|
      if @no_children_no_debt.save
        format.html { redirect_to @no_children_no_debt, notice: 'No children no debt was successfully created.' }
        format.json { render :show, status: :created, location: @no_children_no_debt }
      else
        format.html { render :new }
        format.json { render json: @no_children_no_debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_children_no_debts/1
  # PATCH/PUT /no_children_no_debts/1.json
  def update
    respond_to do |format|
      if @no_children_no_debt.update(no_children_no_debt_params)
        format.html { redirect_to @no_children_no_debt, notice: 'No children no debt was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_children_no_debt }
      else
        format.html { render :edit }
        format.json { render json: @no_children_no_debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_children_no_debts/1
  # DELETE /no_children_no_debts/1.json
  def destroy
    @no_children_no_debt.destroy
    respond_to do |format|
      format.html { redirect_to no_children_no_debts_url, notice: 'No children no debt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_children_no_debt
      @no_children_no_debt = NoChildrenNoDebt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_children_no_debt_params
      params.require(:no_children_no_debt).
             permit(:husband_name, :husband_address, :husband_city, :husband_city,
                    :husband_zip, :husband_phone, :husband_fax, :husband_date,
                    :husband_date, :husband_email, :wife_name, :wife_address,
                    :wife_city, :wife_state, :wife_zip, :wife_phone, :wife_email,
                    :wife_date, :marriage_date, :marriage_city, :marriage_state,
                    :marriage_country)
    end
end
