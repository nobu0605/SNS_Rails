5.times do |i|
    Post.create(user_id:1,title:"title #{i}",content:"hoge #{i}")
end