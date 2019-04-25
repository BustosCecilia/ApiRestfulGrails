package apirestful

class UrlMappings {

    static mappings = {

        "/categorias"(resources: "Categoria") {
            "/items"(resources: "Item")
        }

        "/"(controller: "Client")
       // "/client2"(controller: "Client2")
       // "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
