package com.example.airticketbooking.Repositories;

import com.example.airticketbooking.Model.Booking;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BookingRepository extends JpaRepository<Booking, Long> {

    Booking getBookingsById(Long id);

    List<Booking> findBookingsByUserId(Long id);

}
