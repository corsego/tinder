class Turbo::Ios::PathConfigurationsController < ApplicationController
  # skip_before_action :authenticate_user!

  def show
    render json: {
      "rules": [
        {
          "patterns": [
            "/new$",
            "/edit$"
          ],
          "properties": {
            "context": "modal"
          }
        },
        {
          "patterns": [
            "^/users/edit$"
          ],
          "properties": {
            "context": "default"
          }
        }
      ]
    }
  end
end
