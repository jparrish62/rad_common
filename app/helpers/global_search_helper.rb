module GlobalSearchHelper

  def global_search_scopes
    raw_scopes = Rails.application.config.global_search_scopes
    raw_scopes = raw_scopes.reject {|item| !current_member.can_read?(item[:model])}

    if current_member.global_search_default.blank?
      scopes = raw_scopes
    else
      top = raw_scopes.select {|item| item[:name] == current_member.global_search_default}

      if top.any?
        scopes= top
        raw_scopes.reject! {|item| item[:name] == current_member.global_search_default}
        scopes = scopes + raw_scopes
      else
        scopes = raw_scopes
      end
    end

    return scopes
  end

  def super_search_default
    current_member.super_search_default ? '1' : '0'
  end

end
