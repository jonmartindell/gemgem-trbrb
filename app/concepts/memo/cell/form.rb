class Memo::Cell::Form < ::Cell::Concept
  include ActionView::RecordIdentifier
  include SimpleForm::ActionViewExtensions::FormHelper

  def show
    render :form
  end
end
