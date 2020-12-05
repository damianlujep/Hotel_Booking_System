package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.*;
import pl.bookingsystem.app.repository.*;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Transactional
public class HotelService implements IHotelService {
    private final HotelRepository hotelRepository;
    private final RatePlanRepository ratePlanRepository;
    private final RoomTypeRepository roomTypeRepository;
    private final CalendarRateRepository calendarRateRepository;
    private final CalendarAvailabilityRepository calendarAvailabilityRepository;
    private final CalendarRateHistoryRepository calendarRateHistoryRepository;
    private final RoomTypeStructureRepository roomTypeStructureRepository;
    private final RatePlanStructureRepository ratePlanStructureRepository;

    @Autowired
    public HotelService(HotelRepository hotelRepository, RatePlanRepository ratePlanRepository, RoomTypeRepository roomTypeRepository, CalendarRateRepository calendarRateRepository, CalendarAvailabilityRepository calendarAvailabilityRepository, CalendarRateHistoryRepository calendarRateHistoryRepository, RoomTypeStructureRepository roomTypeStructureRepository, RatePlanStructureRepository ratePlanStructureRepository) {
        this.hotelRepository = hotelRepository;
        this.ratePlanRepository = ratePlanRepository;
        this.roomTypeRepository = roomTypeRepository;
        this.calendarRateRepository = calendarRateRepository;
        this.calendarAvailabilityRepository = calendarAvailabilityRepository;
        this.calendarRateHistoryRepository = calendarRateHistoryRepository;
        this.roomTypeStructureRepository = roomTypeStructureRepository;
        this.ratePlanStructureRepository = ratePlanStructureRepository;
    }

    @Override
    public List<String> getAllHotelCities() {
        List<Hotel> hotelRepositoryAll = hotelRepository.findAll();

        return hotelRepositoryAll.stream()
                .map(Hotel::getCity)
                .distinct()
                .collect(Collectors.toList());
    }

    @Override
    public List<Hotel> findHotelByCityAndArrivalDepartureDates(HotelSearchingDto search) {
        return calendarAvailabilityRepository.findHotelByCityAndArrivalDepartureDates(
                search.getCity(), search.getArrivalDate(), (search.getDepartureDate()).minusDays(1));
    }

    @Override
    public Hotel findHotelById(int hotelId) {
        return hotelRepository.getOne(hotelId);
    }

    @Override
    public String findHotelSelectedPage(int hotelId) {
        Hotel hotelSelected = hotelRepository.getOne(hotelId);

        Map<Hotel, String> bookingHotelPages = new HashMap<>();
        List<Hotel> all = hotelRepository.findAll();
        for (Hotel hotel : all){
            switch (hotel.getName()){
                case "Hotel Kraków":
                    bookingHotelPages.put(hotel, "hotel-krakow-booking-page");
                    break;
                case "Hotel Łódź":
                    bookingHotelPages.put(hotel, "hotel-lodz-booking-page");
                    break;
                case "Hotel Barcelona":
                    bookingHotelPages.put(hotel, "hotel-barcelona-booking-page");
                    break;
            }
        }

        return bookingHotelPages.get(hotelSelected);
    }

    @Override
    public BigDecimal findLowestHotelRate(int hotelID, LocalDate arrivalDate) {
        Hotel currentHotel = hotelRepository.getOne(hotelID);
        return calendarRateRepository.lowestHotelRate(currentHotel, arrivalDate);
    }

    @Override
    public List<RoomType> findAllRoomTypesAvailableByDate(ReservationDto reservationDto) {
        return calendarAvailabilityRepository.findAllRoomTypesAvailableByDate(reservationDto.getHotel(), reservationDto.getArrivalDate(), reservationDto.getDepartureDate());
    }

    @Override
    public String findRoomTypeAndRateSelectedPage(int roomTypeId, int ratePlanId) {
        if (roomTypeId == 1 && ratePlanId == 1)
            return "double-room-standard";
        else if (roomTypeId == 1 && ratePlanId == 2)
            return "double-room-non-refundable";
        else if (roomTypeId == 2 && ratePlanId == 1)
            return "twin-room-standard";
        else if (roomTypeId == 2 && ratePlanId == 2)
            return "twin-room-non-refundable";
        else if (roomTypeId == 1 && ratePlanId == 3)
            return "double-room-members";
        else if (roomTypeId == 1 && ratePlanId == 4)
            return "double-room-members-non-refundable";
        else if (roomTypeId == 2 && ratePlanId == 3)
            return "twin-room-members";
        else if (roomTypeId == 2 && ratePlanId == 4)
            return "twin-room-members-non-refundable";

        return null;

    }

    @Override
    public Map<String, List<RoomAndRatePriceDto>> roomAndRatesPricesMapped(ReservationDto reservationDto) {
        Map<String, List<RoomAndRatePriceDto>> listMap = new HashMap<>();

        RoomType doubleRoom = roomTypeRepository.findByName("Double room");
        RoomType twinRoom = roomTypeRepository.findByName("Twin room");

        RatePlan standard = ratePlanRepository.findByName("Standard");
        RatePlan promotion = ratePlanRepository.findByName("Promotion");
        RatePlan standardMember = ratePlanRepository.findByName("Standard Member");
        RatePlan promotionMember = ratePlanRepository.findByName("Promotion Member");

        //Double Room Standard Price
        List<RoomAndRatePriceDto> doubleStandard = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, doubleRoom, standard);

        //Twin Room Standard Price
        List<RoomAndRatePriceDto> twinStandard = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, twinRoom, standard);

        //Double Room Standard Price
        List<RoomAndRatePriceDto> doublePromotion = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, doubleRoom, promotion);

        //Twin Room Standard Price
        List<RoomAndRatePriceDto> twinPromotion = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, twinRoom, promotion);

        //Double Room Members Standard Price
        List<RoomAndRatePriceDto> doubleMembersStandard = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, doubleRoom, standardMember);

        //Twin Room Standard Price
        List<RoomAndRatePriceDto> twinMembersStandard = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, twinRoom, standardMember);

        //Double Room Members Standard Price
        List<RoomAndRatePriceDto> doubleMembersPromotional = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, doubleRoom, promotionMember);

        //Twin Room Standard Price
        List<RoomAndRatePriceDto> twinMembersPromotional = roomAndRetePricesByRoomTypeAndRatePlan(reservationDto, twinRoom, promotionMember);

        listMap.put("DOUBLE_STANDARD", doubleStandard);
        listMap.put("TWIN_STANDARD", twinStandard);
        listMap.put("DOUBLE_PROMOTIONAL", doublePromotion);
        listMap.put("TWIN_PROMOTIONAL", twinPromotion);
        listMap.put("DOUBLE_MEMBERS_STANDARD", doubleMembersStandard);
        listMap.put("TWIN_MEMBERS_STANDARD", twinMembersStandard);
        listMap.put("DOUBLE_MEMBERS_PROMOTIONAL", doubleMembersPromotional);
        listMap.put("TWIN_MEMBERS_PROMOTIONAL", twinMembersPromotional);

        return listMap;
    }

    @Override
    public List<RoomAndRatePriceDto> roomAndRatesPricesConverter(List<String> roomAndRatePricesObjects) {
        List<List<String>> pricesAndRates = new ArrayList<>();

        for (String s : roomAndRatePricesObjects){
            String[] split = s.split(",");
            List<String> collect = Arrays.stream(split).collect(Collectors.toList());
            pricesAndRates.add(collect);
        }

        List<RoomAndRatePriceDto> pricesAndRatesList = new ArrayList<>();

        for (List<String> s : pricesAndRates){
            RoomAndRatePriceDto conversion = new RoomAndRatePriceDto();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate parse = LocalDate.parse(s.get(0), formatter);
            conversion.setDate(parse);
            Hotel currentHotel = hotelRepository.getOne(Integer.parseInt(s.get(1)));
            conversion.setHotelId(currentHotel);
            BigDecimal price = BigDecimal.valueOf(Double.parseDouble(s.get(2)));
            conversion.setPrice(price.setScale(2, RoundingMode.HALF_UP));
            CalendarRate originCalendarRate = calendarRateRepository.getOne(Integer.parseInt(s.get(3)));
            conversion.setOriginCalendarRatesId(originCalendarRate);

            pricesAndRatesList.add(conversion);
        }

        return pricesAndRatesList;
    }

    @Override
    public List<RoomAndRatePriceDto> roomAndRetePricesByRoomTypeAndRatePlan(ReservationDto reservationDto, RoomType roomType, RatePlan ratePlan) {
        RoomTypeStructure rotStructure = roomTypeStructureRepository.findByHotelIdAndRoomTypeId(reservationDto.getHotel(), roomType);
        RatePlanStructure rapStructure = ratePlanStructureRepository.findByHotelIdAndRatePlan(reservationDto.getHotel(), ratePlan);

        List<String> doubleStandard = calendarRateHistoryRepository.currentPricesByDateRoomTypeStructureAndRatePlanStructure(rotStructure, rapStructure,reservationDto.getArrivalDate(), reservationDto.getDepartureDate(), reservationDto.getHotel());
        return roomAndRatesPricesConverter(doubleStandard);
    }


}
