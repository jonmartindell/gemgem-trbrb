class MemosController < ApplicationController
  respond_to :html

  def new
    form Memo::Create
    render_form
  end
end
