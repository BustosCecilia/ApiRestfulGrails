package apirestful

import grails.rest.Resource

@Resource(uri = "/items", formats = ['json','xml'])
class Item {
    String name;
    double price;
    Categoria categoria;
    static constraints = {
        name blank : false, nullable : false
        price max: 1000D, min: 1D, nullable: false
    }
}
