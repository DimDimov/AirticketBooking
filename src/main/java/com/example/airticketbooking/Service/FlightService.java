package com.example.airticketbooking.Service;

import com.example.airticketbooking.Config.SerpApiClient;
import com.example.airticketbooking.Flight.FlightOption;
import com.example.airticketbooking.Flight.FlightResponse;
import com.example.airticketbooking.Flight.FlightSearchDto;
import com.example.airticketbooking.Flight.SerpApiFlightResponse;
import com.example.airticketbooking.Pricing.PassengerPriceDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FlightService {

    private final SerpApiClient serpApiClient;

    public FlightService(SerpApiClient serpApiClient) {
        this.serpApiClient = serpApiClient;
    }

      public FlightResponse searchFlights(FlightSearchDto req) {

          FlightResponse response1 = new FlightResponse();

          SerpApiFlightResponse outboundFlights = serpApiClient.getFlights(req.getOutbound());

          SerpApiFlightResponse returnFlights;

          if(req.getInbound() != null && req.getInbound().getDepartureId() != null &&
          req.getInbound().getArrivalId() != null && req.getInbound().getDate() != null
          ) {

               returnFlights = serpApiClient.getFlights(req.getInbound());

              for(FlightOption option : returnFlights.getReturnFlights()) {

                  double returnBasePrice = option.getPrice();

                  int adults = req.getPassengers().getAdults();
                  int children = req.getPassengers().getChildren();

                double  returnTotalPrice = ((returnBasePrice * adults) + (returnBasePrice * 0.75 * children)) * 0.6;
                  option.setPrice(returnTotalPrice);

              }
              response1.setReturnFlights(returnFlights.getReturnFlights());
          }

          for (FlightOption option :  outboundFlights.getOutboundFlights()) {

              double outboundBasePrice = option.getPrice();

              List<PassengerPriceDto> passengerPrices = new ArrayList<>();

              int adults = req.getPassengers().getAdults();
              int children = req.getPassengers().getChildren();

              for(int i=0; i< adults; i++) {
                  double adultPrice = outboundBasePrice * 0.6;

                  passengerPrices.add(new PassengerPriceDto(adultPrice, "ADULT"));
              }

              for(int i=0; i< children; i++) {
                  double childPrice = outboundBasePrice * 0.6 * 0.75;

                  passengerPrices.add(new PassengerPriceDto(childPrice, "CHILD"));
              }

              double outboundTotalPrice = ((outboundBasePrice * adults) + (outboundBasePrice * 0.75 * children)) * 0.6;
              option.setPrice(outboundTotalPrice);
              option.setPassengerPrices(passengerPrices);
          }

            response1.setOutboundFlights(outboundFlights.getOutboundFlights());

            return response1;
    }

}