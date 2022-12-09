# Logic to set current visitor 
module SetCurrentVisitor
    extend ActiveSupport::Concern

    include do
        before_action :set_current_visitor
    end

    private

    def set_current_visitor
        Current.visitor ||= Visitor.find_by(id: session[:visitor_id]) || create_current_visitor
    end

    def create_current_visitor
        # If session contains a visitor_id, that matches a visitor in the database, 
        # then the record is returned. 
        # Otherwise, a new visitor is created, set the session, and saved in the database.
        Visitor.create!(
            user_agent: request.user_agent
        )
        session[:visitor_id] = visitor.id
        visitor
    end
end