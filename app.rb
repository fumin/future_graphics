require 'jellyfish'
require 'erb'
VIEWS = {index: File.read('views/index.html.erb'),
         original: File.read('views/original.html.erb'),
         colour: File.read('views/colour.html.erb'),
         pencil: File.read('views/pencil.html.erb')}
class App
  include Jellyfish
  get '/' do
    ERB.new(VIEWS[:index]).result
  end
  get '/original' do
    ERB.new(VIEWS[:original]).result
  end
  get '/pencil' do
    ERB.new(VIEWS[:pencil]).result
  end
  get '/colour' do
    ERB.new(VIEWS[:colour]).result
  end
end
