# frozen_string_literal: true

module ApplicationHelper
  def alert_title_for(name)
    case name
    when 'alert', 'danger', 'error' then 'Opps...'
    when 'notice' then 'Success!'
    else [name.capitalize].join('!')
    end
  end

  def alert_type_for(name)
    case name
    when 'notice' then 'success'
    when 'alert', 'error' then 'danger'
    else name
    end
  end
end
