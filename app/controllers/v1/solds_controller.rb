class V1::SoldsController < ApplicationController

    load_and_authorize_resource
    before_action :authenticate_user!

    def all_sold 

        @sold = current_user.sold
        render json: @sold

    end

end
