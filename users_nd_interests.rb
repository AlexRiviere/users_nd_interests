require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "yaml"

before do 
  @user_hash = YAML.load_file('users.yaml')
  @names = []
  @user_hash.each_key{ |name| @names << name.to_s }
end

helpers do  
  def array_to_comma_sep_string(arr)
    result = ""
    length = arr.size
    arr.each_with_index do |interest, idx|
      if idx < length - 1
        result << "#{interest}, "
      else
        result << "#{interest}"
      end
    end
    
    result
  end
  
  def count_interests(user_hash)
    count = 0
    user_hash.each do |name, info_hash|
      count += info_hash[:interests].size
    end
    count
  end
end

get "/" do
  redirect "/user-list"
end

get "/user-list" do
  @title = "User List"
  erb :user_list
end

get "/users/:name" do
  @current_user_name = params[:name].to_s
  @title = "#{@current_user_name}'s Page"
  
  @ind_user_hash = @user_hash[@current_user_name.to_sym]
  @other_users = @names.reject{ |user_name| user_name == @current_user_name }
  
  redirect "/" unless @names.include?(@current_user_name)
  
  erb :user_page
end

=begin
on #4 of the assignment, we are going to figure this out by not mutating the caller and creating a little list of the users for each user page 
=end