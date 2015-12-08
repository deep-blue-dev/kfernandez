class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :qualifying, :signup

  def show
    render_wizard
  end
end
