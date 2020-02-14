#require "cerberus"
#
#Cerberus.configure do |config|
#  config.jwt = {
#    rsa_public: ENV["JWT_RSA_PUBLIC"],
#    algorithm: ENV["JWT_ALGORITHM"],
#    issuer: ENV["JWT_ISSUER"],
#    enabled: ->(env) { Rails.env.production? }
#  }.freeze
#
#  config.basic = {
#    username_digest: ENV["SIDEKIQ_USERNAME"],
#    password_digest: ENV["SIDEKIQ_PASSWORD"],
#    enabled: lambda do |env|
#      Rails.env.production? && env["REQUEST_PATH"].start_with?(%r{/sinatra_cron})
#    end
#  }.freeze
#end
#
#require "cerberus/jwt"
#require "cerberus/basic"
#
#
#Torii::Application.config.middleware.use(Cerberus::Basic)
