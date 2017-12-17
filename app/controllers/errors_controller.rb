class ErrorsController < ApplicationController
  def not_found
    @title = 'Page not found'
    render(:status => 404)
  end

  def internal_server_error
    @title = 'Internal error'
    render(:status => 500)
  end
end
