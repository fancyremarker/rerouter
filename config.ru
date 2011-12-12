require "rack/rewrite"

use Rack::Rewrite do
  # Rewrite blog.macreery.com to life.macreery.com
  r301 %r{.*}, "http://life.macreery.com$&",
    :if => Proc.new { |rack_env| rack_env["SERVER_NAME"] == "blog.macreery.com" }
end

run lambda { |env|
  [
    200, 
    {
      "Content-Type"  => "text/html", 
      "Cache-Control" => "public, max-age=86400" 
    },
    File.open("public/index.html")
  ]
}
