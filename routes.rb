class Router
    def initialize
        @routes = {}
    end

    def match(route)
        puts "call match"
        p @routes
        @routes.update route
    end

    def routes(&the_proc)
        #yield
        self.instance_eval &the_proc
        p @routes
    end
end

Router.new.instance_eval { p @routes}
Router.new.routes do
    match "/users" => 'users#index'
    match "/login" => 'sessions#new'
end
