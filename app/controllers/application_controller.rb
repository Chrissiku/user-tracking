class ApplicationController < ActionController::Base
    # Ensure that the visitor is tracked for every request
    include SetCurrentVisitor

    before_action :turbo_frame_request_variant
    
    private
  
    def turbo_frame_request_variant
      request.variant = :turbo_frame if turbo_frame_request?
    end
end
