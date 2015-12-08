module UsersHelper
  def qualified?(param_hash) 
    answers = []
    param_hash.each {|key, value| answers << key if value == "true" }
    answers.length >= 3 ? true : false
  end
end
