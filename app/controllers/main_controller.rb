class MainController < ApplicationController

  before_action :authenticate_user!, only: :show
  
  def index
    render "layouts/main"
  end
  
  def show
  
  end
end
