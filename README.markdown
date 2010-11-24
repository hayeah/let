# Let

Memoized methods for objects, like rspec's let.

class Foo
  include Let
  let(:field1) { rand }
end

foo = Foo.new
foo.field1 # =>
foo.instance_variable_get("@field1") == foo.field1


## Rails

Let is automatically included into ActiveRecord and ActionController

So for example, if you are using AuthLogic, and you have a method in your ApplicationController that looks like this:

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

You can rewrite that as:

    let(:current_user_session) { UserSession.find }

# Copyright

Copyright (c) 2010 Howard Yeh. See LICENSE.txt for further details.
