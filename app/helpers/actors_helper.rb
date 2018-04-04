module ActorsHelper
    def is_admin
        request.host == "dev-drama.minami.im"
    end
end
