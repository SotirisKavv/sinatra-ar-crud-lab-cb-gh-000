
require './config/environment'

begin
  fi_check_migration

  use Rack::MethodOverride

  run ApplicationController
end
