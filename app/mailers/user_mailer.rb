class UserMailer < ActionMailer::Base
 	default :from => "example@gmail.com"

  def postulacion(post, user)
    @post = post 
    @user = user 
  	mail(:to => @post.email, :subject => "Postulacion")
  end

    def recomendacion(post, user)
  	@post = post 
  	@user = user 
  		mail(:to => @user.email, :subject => "Recomendacion")
  end

end
