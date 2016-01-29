class MemosController < ApplicationController
  respond_to :html

  def index

  end

  def new
    form Memo::Create
  end

  def create
    run Memo::Create do |op|
      flash[:notice] = "Created memo"
      return redirect_to root_path
    end

    render :new
  end
end
