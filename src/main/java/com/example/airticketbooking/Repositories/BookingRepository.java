package com.example.airticketbooking.Repositories;

import com.example.airticketbooking.Model.Booking;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingRepository extends JpaRepository<Booking, Long> {
}
