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
end
