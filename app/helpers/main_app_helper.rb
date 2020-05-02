# frozen_string_literal: true

module MainAppHelper
  def main_app_props(user)
    {
      currentUser: user_props(user),
    }
  end

  def user_props(user)
    {
      id: user.id,
      email: user.email,
      # admin: current_user.admin, # Note that this takes the current_user
      # avatar: {
      #   url: user.avatar_url(400),
      # },
    }
  end
end
