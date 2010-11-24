require 'let'
require 'rails'
module Let
  class Railtie < Rails::Railtie
    railtie_name :let
    initializer "let.includes_all_your_bases" do
      ActiveRecord::Base.send :include, Let
      ActionController::Base.send :include, Let
    end
  end
end
