require 'let'
ActiveRecord::Base.send(:include,Let)
ActionController::Base.send(:include,Let)
