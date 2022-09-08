class V1::FarmersController < ApplicationController

    def get_all_farmers

        @farmers = User.where(role:'farmer')
        render json: @farmers

    end

end