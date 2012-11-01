require "common-ruby-difio"
require "json"

module Difio
    class cloudControl < Difio::DifioBase
        json = File.read('/srv/creds/creds.json')
        creds = JSON.parse(json)

        configure({
            'user_id'  => creds['CONFIG']['CONFIG_VARS']['DIFIO_USER_ID'],
            'app_name' => ENV['DEP_NAME'],
            'app_uuid' => ENV['DEP_ID'],
            'app_type' => 'ruby-' + RUBY_VERSION,
            'app_url'  => 'http://' + ENV['DEP_NAME'].split('/')[0] + '.' + ENV['DOMAIN'],
            'app_vendor' => 3,  # cloudControl
            'url' => ENV['DIFIO_REGISTER_URL'],
        })
    end
end
