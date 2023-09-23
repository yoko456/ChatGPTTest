class ChatsController < ApplicationController

#before_action :set_token, only: :search
  
 #   def index
 #       render :index
 #   end

    def index; end

    def search
        @client = OpenAI::Client.new(access_token: ENV['API_KEY'])
        response = @client.chat(
          parameters: {
              model: "gpt-3.5-turbo",
              messages: [{ role: "user", content: @query }],
          })
    
        @chats = response.dig("choices", 0, "message", "content")
      end

      private

      def text_params
        @query = params[:text]
      end

 #     def set_token
 #       @api_key = Rails.application.credentials.dig(:openai, :api_key)
 #     end
end
