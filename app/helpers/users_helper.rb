module UsersHelper

  def user_message(user)
    user_first_name   = user.name.split.first
    random_motivation = ["Just do it.", "Don't let your dreams be dreams.", "Yesterday you said tomorrow.", "Make your dreams come true.", "Wake up and work hard at it.", "Nothing is impossible.", "Yes you can.", "If you're tired of starting over, stop giving up."].sample
    output = "<h2 id='user-message'>"
    output += "#{user_first_name}, you have #{pluralize(user.todos.count, 'todo', 'to-dos')}...<br>#{random_motivation}"
    output += "</h2>"
    output.html_safe
  end

end
