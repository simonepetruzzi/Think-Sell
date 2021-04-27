class InsertionsController < ApplicationController
  before_action :set_insertion, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show ]
  
  

  # GET /insertions or /insertions.json
  def index
    @insertions = Insertion.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
  end

  # GET /insertions/1 or /insertions/1.json
  def show
    views = @insertion.views 
    @insertion.update(views: views)
  end

  # GET /insertions/new
  def new
    @insertion = Insertion.new
  end

  # GET /insertions/1/edit
  def edit
  end

  # POST /insertions or /insertions.json
  def create
    @insertion = Insertion.new(insertion_params)
    @insertion.user = current_user

    respond_to do |format|
      if @insertion.save
        format.html { redirect_to @insertion, notice: "Insertion was successfully created." }
        format.json { render :show, status: :created, location: @insertion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @insertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insertions/1 or /insertions/1.json
  def update
    respond_to do |format|
      if @insertion.update(insertion_params)
        format.html { redirect_to @insertion, notice: "Insertion was successfully updated." }
        format.json { render :show, status: :ok, location: @insertion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @insertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insertions/1 or /insertions/1.json
  def destroy
    @insertion.destroy
    respond_to do |format|
      format.html { redirect_to insertions_url, notice: "Insertion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insertion
      @insertion = Insertion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insertion_params
      params.require(:insertion).permit(:title, :views, :body, :thumbnail ,:price )
    end

    def insertion_owner
      @insertion = Insertion.find(params[:id])
      us = current_user
      if @insertion.user != us && us.admin == false
        flash[:danger] = "Permission denied"
        redirect_to root_path
      end
    end
end
