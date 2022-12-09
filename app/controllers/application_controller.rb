class ApplicationController < ActionController::Base
    # Ensure that the visitor is tracked for every request
    include SetCurrentVisitor
end
