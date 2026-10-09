package com.example.airticketbooking.Kafka;


import com.example.airticketbooking.Service.BookingService;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;
import tools.jackson.databind.ObjectMapper;


@Service
public class KafkaConsumer {


    private final ObjectMapper objectMapper;
    private final BookingService bookingService;

    public KafkaConsumer( ObjectMapper objectMapper, BookingService bookingService) {
        this.objectMapper = objectMapper;
        this.bookingService = bookingService;
    }

    @KafkaListener(
            topics = "payment-completed",
            groupId = "booking-payment"
    )

    public void consumePayment(String message) {

        try {
            PaymentCompletedEvent event =
                    objectMapper.readValue(
                            message,
                            PaymentCompletedEvent.class
                    );

            if ("SUCCESS".equals(event.getStatus())) {
                Long bookingId = event.getBookingId();

                bookingService.markPaymentSuccessful(bookingId);

            }

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
