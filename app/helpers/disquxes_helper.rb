module DisquxesHelper

    def userName(id)
        user =  Project.find(id).user_id
        name = User.find(user).name
    end

    def created(time)
        time.strftime("%b %d %Y")
    end
    
end
