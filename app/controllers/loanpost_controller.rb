class LoanpostController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy] 
  
  def index
    @loadposts = Loanpost.all
  end

end
