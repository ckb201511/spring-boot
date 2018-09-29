package demo4

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/index"(view:"/index")
        "/login"(view:"/login")
        "500"(view:'/error')
        "404"(view:'/notFound')
        "402"(view:'/notFound')
        "401"(view:'/notFound')
        "403"(view:'/notFound')
        "501"(view:'/notFound')
    }
}
