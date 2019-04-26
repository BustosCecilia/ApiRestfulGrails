package apirestful

import grails.converters.JSON
import groovy.json.JsonSlurper

class ClientController {

    def index() {
        //System.out.println("el sitio es "+ id)

        def url = new URL("https://api.mercadolibre.com/sites")
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept", "aplication/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())
        [result: result]

    }

    def obtenerAgencias() {

        def url = "https://api.mercadolibre.com/sites/"
        def site_id = params.site_id
        def payment_method_id = params.payment_method_id
        def near_to = params.near_to
        def limit = params.limit
        def offset = params.offset
        def criterioOrden = params.criterioOrden
        System.out.println("site_idaaaaaaa"+ site_id+"..............")
        if (site_id == "site_id") {
           // render "ERROR_site_id" as JSON
            System.out.println("error sitio")
        } else {
            url = url + site_id + "/payment_methods/"
            if (payment_method_id == "payment_method_id") {
               // render "ERROR_Payment" as JSON
                System.out.println("error payment");
            } else {
                url = url + payment_method_id + "/agencies?"
                if (near_to != "near_to") {
                    url = url + "near_to=" + near_to
                    if (limit != "limit") {
                        url = url + "&limit=" + limit
                        if (offset != "limit") {
                            url = url + "&offset=" + offset
                        }
                    }
                }

            }
        }
        System.out.println("la url es ")
        System.out.println(url)
        System.out.println(".......................................")
       def url1 = new URL(url)
        def connection = (HttpURLConnection) url1.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept", "aplication/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())
        render result
        System.out.println("................FINAL.......................")
    }


}

