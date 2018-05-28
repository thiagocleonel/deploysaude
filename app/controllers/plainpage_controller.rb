class PlainpageController < ApplicationController

  def index
    @current_user
    @presentation_name = current_user.name || current_user.email
    #other alternatives are
    # flash[:warn ] = "Israel don't quite like warnings"
    #flash[:danger ] = "Naomi let the dog out!"
  end

end
