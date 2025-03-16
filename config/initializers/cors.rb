# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://cdn.jsdelivr.net"

    resource "*",
      headers: :any,
      methods: [ :get, :post, :put, :delete, :options, :head ],
      credentials: false
  end
end
