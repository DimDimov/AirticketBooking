package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.Kafka.KafkaProducer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class KafkaTestController {

    private final KafkaProducer kafkaProducer;


    public KafkaTestController(KafkaProducer kafkaProducer) {
        this.kafkaProducer = kafkaProducer;
    }

    @GetMapping("/kafka-test")
    public String testKafka() {
        kafkaProducer.sendMessage("Hello Kafka from Spring Boot!");
        return "Message sent";
    }
}
