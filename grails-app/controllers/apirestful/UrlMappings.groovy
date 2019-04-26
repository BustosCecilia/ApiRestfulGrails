package apirestful

class UrlMappings {

    static mappings = {

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "Client")
       // "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
