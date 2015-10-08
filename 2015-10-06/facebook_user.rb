class FacebookUser

  def initialize(email, password)
    @email = email
    @password = password
  end

  def change_password!(old_pass, new_pass)
    if old_pass == @password
      @password = new_pass
      puts "Password successfully changed."
    else
      puts "Password could not be changed. The old password was wrong."
    end
  end

end

user = FacebookUser.new("bart@thesimpsons.com", "KhwS2J7")
user.change_password!("KhwS2J7aaa", "NewPassword")
user.change_password!("KhwS2J7", "NewPass")
user.change_password!("KhwS2J7", "SecretPass")
user.change_password!("NewPass", "SecretPass")
