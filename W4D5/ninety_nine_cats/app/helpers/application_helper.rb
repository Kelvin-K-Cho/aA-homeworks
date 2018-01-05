module ApplicationHelper
  def auth_token
    "<input=\"#{auth_token}\">#{h("authenticity_token")}#{h("form_authenticity_token")}.html_safe
  end
end
