class PictureShotsController < ApplicationController
  before_action :set_picture_shot, only: %i[ show edit update destroy ]

  # GET /picture_shots or /picture_shots.json
  def index
    @picture_shots = PictureShot.all
  end

  # GET /picture_shots/1 or /picture_shots/1.json
  def show
  end

  # GET /picture_shots/new
  def new
    @picture_shot = PictureShot.new
  end

  # GET /picture_shots/1/edit
  def edit
  end

  # POST /picture_shots or /picture_shots.json
  def create
    @picture_shot = PictureShot.new(picture_shot_params)

    respond_to do |format|
      if @picture_shot.save
        format.html { redirect_to picture_shot_url(@picture_shot), notice: "Picture shot was successfully created." }
        format.json { render :show, status: :created, location: @picture_shot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picture_shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_shots/1 or /picture_shots/1.json
  def update
    respond_to do |format|
      if @picture_shot.update(picture_shot_params)
        format.html { redirect_to picture_shot_url(@picture_shot), notice: "Picture shot was successfully updated." }
        format.json { render :show, status: :ok, location: @picture_shot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture_shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_shots/1 or /picture_shots/1.json
  def destroy
    @picture_shot.destroy

    respond_to do |format|
      format.html { redirect_to picture_shots_url, notice: "Picture shot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_shot
      @picture_shot = PictureShot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picture_shot_params
      params.require(:picture_shot).permit(:title, :description, :user_references, :user_pictureshot)
    end
end
