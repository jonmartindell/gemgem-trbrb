module Memo::Contract
  class Create < Reform::Form
    model Memo

    property :date
    property :completed_tasks
    property :future_plans
    property :notes_to_self
    property :successes
    property :disappointments
    property :expenses

    validate :something_filled_in?

    private
    def something_filled_in?
      if completed_tasks.blank? &&
        future_plans.blank? &&
        notes_to_self.blank? &&
        successes.blank? &&
        disappointments.blank? &&
        expenses.blank?

        errors.add(:base, "something must be filled in")
      end
    end

  end
end
