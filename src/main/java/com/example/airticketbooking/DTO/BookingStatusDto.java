package com.example.airticketbooking.DTO;


import com.example.airticketbooking.Enum.BookingStatus;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Data;

@Data
public class BookingStatusDto {

    @Enumerated(EnumType.STRING)
    private BookingStatus status;
}
