# frozen_string_literal: true

class ModelMocksController < ApplicationController
  before_action :set_model_mock, only: %i[show edit update destroy]

  # GET /model_mocks
  def index
    @model_mocks = ModelMock.all
  end

  # GET /model_mocks/1
  def show; end

  # GET /model_mocks/new
  def new
    @model_mock = ModelMock.new
  end

  # GET /model_mocks/1/edit
  def edit; end

  # POST /model_mocks
  def create
    @model_mock = ModelMock.new(model_mock_params)

    if @model_mock.save
      redirect_to @model_mock, notice: 'Model mock was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /model_mocks/1
  def update
    if @model_mock.update(model_mock_params)
      redirect_to @model_mock, notice: 'Model mock was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /model_mocks/1
  def destroy
    @model_mock.destroy
    redirect_to model_mocks_url, notice: 'Model mock was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_model_mock
    @model_mock = ModelMock.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def model_mock_params
    params.require(:model_mock).permit(:name, :content, :stuffable)
  end
end
