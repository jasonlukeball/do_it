module UsersHelper

  def user_message(user)
    user_first_name = user.name.split.first
    output = "<h2 id='user-message'>"
    output += "#{user_first_name}, you have #{pluralize(user.todos.count, 'todo', 'to-dos')}...<br>Don't let your dreams be dreams."
    output += "</h2>"
    output.html_safe
  end

end
