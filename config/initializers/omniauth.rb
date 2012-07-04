Rails.application.config.middleware.use OmniAuth::Builder do
#    provider :twitter, '4kzXPwHo3LS7YCNXkemUjw', 'cfQC3MxkknMgxFFR7JkYeqJbwQ9C8dAmSzlvud9wCxI', {:display => "popup"}
#    #------server
    #provider :facebook, '257271454300783', '0ebc966be917ec5bbb9eaa902c9da059', {:display => "popup", :scope => "publish_stream,offline_access" }
    #----localhost
 provider :facebook, '273137076050855', '735ffe661c203afc1a7a6518042fc66c'
    #provider :open_id, OpenID::Store::Filesystem.new('/tmp'), {:name => "google", :domain => "https://www.google.com/accounts/o8/id" }
#    provider :google_apps, OpenID::Store::Filesystem.new('tmp'), :domain => "https://www.google.com/accounts/o8/id", :name => 'google'
#    provider :mixi, '152787568131220', '63afa495d96ddeefb8a366f4a8eab0c1', {:display => "popup"}

    # Mention other providers here you want to allow user to sign in with
end
# OmniAuth.config.full_host = 'http://apps.facebook.com/subbarao'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

