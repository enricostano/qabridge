class CodeElementsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: CodeElement.all
  end

  def create
    @code_element = CodeElement.new(code_element_params)
    if @code_element.save
      render json: @code_element
    else
      render json: @code_element.errors
    end
  end

  private

  def code_element_params
    params.require(:code_element).permit(:name, :element_type)
  end
end
