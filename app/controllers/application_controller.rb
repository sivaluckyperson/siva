class ApplicationController < ActionController::Base

around_filter :profile if Rails.env == 'development'
def profile
  if params[:profile] && result = RubyProf.profile { yield }

    out = StringIO.new
    RubyProf::GraphHtmlPrinter.new(result).print out, :min_percent => 0
    self.response_body = out.string

  else
    yield
  end
end
  protect_from_forgery
end
