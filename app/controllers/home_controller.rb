class HomeController<ApplicationController

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