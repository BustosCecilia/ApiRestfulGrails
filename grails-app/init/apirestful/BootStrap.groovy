package apirestful

class BootStrap {

    def init = { servletContext ->

        def c1 = new Categoria(name: "Categoria1", descripcion: "descripcion 1").save() //por existir cat con save me lo guarda met abstracto
        def c2 = new Categoria(name: "Categoria2", descripcion: "descripcion2").save()
        def c3 =new Categoria(name: "Categoria3",descripcion: "Descripcion3").save()

        new Item(name:"item 1", price:20, categoria:c1).save()
        new Item(name:"item 2", price:30, categoria:c2).save()
    }
    def destroy = {
    }
}
