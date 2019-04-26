package apirestful

import grails.converters.JSON
import groovy.json.JsonSlurper

class ClientController {

    def index() {
        //System.out.println("el sitio es "+ id)

        def url = new URL("https://api.mercadolibre.com/sites")
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept","aplication/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())
        [result : result]

    }

    def obtenerCategorias(){
        def id = params.variabledelControler
        def url = new URL("https://api.mercadolibre.com/sites/"+id+"/categories")
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept","aplication/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())
        render result as JSON
    }

    def obtenerCategoriasHijas(){
        def id = params.variabledelControler1
        def url = new URL("https://api.mercadolibre.com/categories/"+id)
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept","aplication/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result1 = json.parse(connection.getInputStream())
        render result1 as JSON
    }




}
