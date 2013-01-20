require './app'

use Rack::ContentLength
use Rack::ContentType
use Rack::Static, urls: ['/css', '/img', '/favicon.ico'],
                  root: 'public'
run App.new
