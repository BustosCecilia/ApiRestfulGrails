package apirestful

import grails.rest.Resource

//@Resource(uri = '/categorias', readOnly = true, formats = ['json', 'xml']) // ya tengo mi api con esta anotacion
@Resource(uri = '/categorias', formats = ['json', 'xml']) // ya tengo mi api con esta anotacion
class Categoria {

    String name;
    String descripcion;

    static  hasMany = [items:Item]
    static constraints = { // tengo que tener un nombre y una descripcion, con esto me persiste una categoria,
        name blank : false, nullable : false
        descripcion blank: false, nullable: false
    }
}
