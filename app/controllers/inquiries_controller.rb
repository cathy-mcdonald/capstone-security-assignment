class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :update, :destroy]

  # GET /inquiries
  # GET /inquiries.json
  def index
    @inquiries = Inquiry.all
  end

  # GET /inquiries/1
  # GET /inquiries/1.json
  def show
  end

  # POST /inquiries
  # POST /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.save
      render :show, status: :created, location: @inquiry
    else
      render json: @inquiry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inquiries/1
  # PATCH/PUT /inquiries/1.json
  def update
    @inquiry = Inquiry.find(params[:id])

    if @inquiry.update(inquiry_params)
      head :no_content
    else
      render json: @inquiry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inquiries/1
  # DELETE /inquiries/1.json
  def destroy
    @inquiry.destroy

    head :no_content
  end

  private

    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    def inquiry_params
      params.require(:inquiry).permit(:subject, :text)
    end
end
