class LoanpostsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy] 
  
  def index
    @loanposts = Loanpost.all
  end

  def new
    @loanpost = Loanpost.new
  end

  def show
    @loanpost = Loanpost.find(params[:id])
  end

  def edit
    @loanpost = Loanpost.find(params[:id])
  end

  def create
    @loanpost = Loanpost.new(loanpost_params)
  
    if @loanpost.save 
      redirect_to loanposts_path
    else
      render :new
    end
  end

  def update
    @loanpost = Loanpost.find(params[:id])
  
    if @loanpost.update(loanpost_params)
      redirect_to loanposts_path
    else
      render :edit
    end
  end

  def destroy
    @loanpost = Loanpost.find(params[:id])
    
    @loanpost.destroy
    redirect_to loanposts_path
  end

  private

  def loanpost_params
    params.require(:loanpost).permit(:phone, :occupation, :income, :homephone, :facebook, :email, :image, :image2, :image3, :image4)
  end

end
