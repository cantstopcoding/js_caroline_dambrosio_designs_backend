class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, 'very_secret')
    end

    def auth_header
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decode_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'very_secret', true, algorithm: 'HS256')    
            rescue => JWT:DecodeError
                nil 
            end
        end
    end

    def current_user
        if decode_token
            user_id = decode_token[0]['user_id']
            # JWT.decode => [{ "user_id"=>1 }, { "alg"=>"HS256" }]
            # [0] is the payload { "user_id"=>1 }
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
