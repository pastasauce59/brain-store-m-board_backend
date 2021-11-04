class ApplicationController < ActionController::API
    before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, "exp_secret", "HS256")
    end

    def logged_in?
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin
            user_id = JWT.decode(token, "exp_secret")[0]["user_id"]
            user = User.find(user_id)
        rescue
            user = nil
        end

       unless user
            render json: {error: "Please login!"}
        end
    end

end
