require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class Creatubbles < OmniAuth::Strategies::OAuth2
      option :name, "creatubbles"
      option :client_options, {site: "https://api.creatubbles.com"}

      uid { raw_info['data']['id'] }

      info do
        {
          :username => raw_info['data']['attributes']['username']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= JSON.load(access_token.get('v2/users/me.json').body)
      end
    end
  end
end
