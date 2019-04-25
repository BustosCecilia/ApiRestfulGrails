package apirestful

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
        System.out.println("el sitio es "+ id)
        System.out.print("hola")
        def url = new URL("https://api.mercadolibre.com/sites/"+id+"categories")
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept","aplication/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result1 = json.parse(connection.getInputStream())
        [result1 : result1]
        render result1


    }




}
