class Turbo::Ios::PathConfigurationsController < ApplicationController
  # skip_before_action :authenticate_user!

  def show
    render json: {
      "rules": [
        {
          "patterns": [
            "/new$",
            "/edit$",
            "/sign_in",
            "/sign_up"
          ],
          "properties": {
            "context": "modal"
          }
        }
      ]
    }
  end
end
