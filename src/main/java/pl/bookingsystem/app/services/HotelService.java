package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.repository.HotelRepository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class HotelService implements IHotelServices {
    private final HotelRepository hotelRepository;

    @Autowired
    public HotelService(HotelRepository hotelRepository) {
        this.hotelRepository = hotelRepository;
    }

    @Override
    public List<String> getAllHotelCities() {
        List<Hotel> hotelRepositoryAll = hotelRepository.findAll();

        return hotelRepositoryAll.stream()
                .map(Hotel::getCity)
                .distinct()
                .collect(Collectors.toList());
    }
}
