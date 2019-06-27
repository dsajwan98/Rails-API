class UsersController<ApplicationController
    before_action :authorize_request, except: :create

    def show
        @user=User.find(params[:id])
        render json: @user
    end

	def login
		@email=params[:email]
        @password=params[:password]

        @email_db="example@example.com"
        @password_db="abc123" 

        if (@email==@email_db) && (@password==@password_db)
            render json: {'email':@email ,'password':@password}
        else
            render json: params
        end
		
	end

end