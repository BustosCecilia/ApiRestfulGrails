import apirestful.Categoria
import apirestful.Item
import grails.rest.render.json.JsonRenderer

// Place your Spring DSL code here
beans = {
    categoriaRenderer(JsonRenderer, Categoria){
        excludes = ['id']
    }
    itemRenderer(JsonRenderer,Item) {
        excludes = ['id']
    }

}
