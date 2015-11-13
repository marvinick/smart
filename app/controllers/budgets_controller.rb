class BudgetsController < ApplicationController
  def index
  end

  def new
  	@budget = Budget.new
  end

  def create
  	@budget = Budget.new(budget_params)
  	if @budget.save
  		flash[:notice] = "Budget has been created."
  		redirect_to root_path
  	else
  		flash.now[:alert] = "Budget has not been created."
  		render :new
  	end
  end

  private 

  def budget_params
  	params.require(:budget).permit(:amount)
  end
end
