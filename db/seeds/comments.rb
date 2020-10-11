5.times do |i|
    Comment.create(user_id:1,post_id:1,comment:"hoge #{i}")
end