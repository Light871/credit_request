class LoanRequestsController < ApplicationController
  def show
    @loan_request = LoanRequest.find(params[:id])
  end

  def new
    @loan_request = LoanRequest.new
  end

  def create
    @loan_request = LoanRequest.new(loan_request_params)

    if @loan_request.save
      redirect_to @loan_request
    else
      render :new
    end
  end

  private

  def loan_request_params
    params.require(:loan_request).permit(:age, :gender, :salary, :amount, :history_available)
  end
end
