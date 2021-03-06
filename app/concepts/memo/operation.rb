class Memo < ActiveRecord::Base
  class Create < Trailblazer::Operation
    include Model
    model Memo, :create
    contract Contract::Create

    def process(params)
      validate(params[:memo]) do |f|
        f.save
      end
    end
  end
end
