package com.example.airticketbooking.Config;


import com.example.airticketbooking.Flight.FlightRequest;
import com.example.airticketbooking.Flight.SerpApiFlightResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class SerpApiClient {

    @Value("${seprapi.api.key}")
    private String apiKey;

    @Value("${seprapi.api.url}")
    private String apiUrl;

    public SerpApiFlightResponse getFlights(FlightRequest request) {

       /* String returnDate = request.getReturnDate();*/

        String url = apiUrl + "?engine=google_flights" +
                "&departure_id=" + request.getDepartureId() +
                "&arrival_id=" + request.getArrivalId() +
                "&outbound_date=" + request.getDate() +
               "&type=2" +
                "&currency=EUR" +
                "&hl=en" +
                "&api_key=" + apiKey;

        RestTemplate restTemplate = new RestTemplate();
      /*  String json = restTemplate.getForObject(url, String.class);

        System.out.println(json);*/
        System.out.println(url);

        return restTemplate.getForObject(url, SerpApiFlightResponse.class);
    }
}
