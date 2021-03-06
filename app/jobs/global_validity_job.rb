class GlobalValidityJob < ApplicationJob
  queue_as :default

  def perform(company, current_member)
    problems = company.check_global_validity

    if problems.any?
      RadbearMailer.global_validity(company, current_member, problems).deliver_later
    else
      message = "No invalid data found in company #{company.name}"
      RadbearMailer.simple_message(company, current_member, message, message).deliver_later
    end
  end
end
