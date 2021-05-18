module SessionsHelper

    # セッション変数を確認し、インスタンス変数にユーザー情報を格納
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
        
    # bool値を返す
    def logged_in?
        !!current_user
    end

end
