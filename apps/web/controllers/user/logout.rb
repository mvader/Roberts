module Web::Controllers::User
  class Logout
    include Web::Action

    def call(params)
      if @authenticated
        SessionRepository.delete @current_session
        session.delete :session_token
      end

      redirect_to link_to(:home)
    end
  end
end