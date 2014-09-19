package com.kasun.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.Passenger;
import com.kasun.domain.SearchTravel;
import com.kasun.domain.Travel;
import com.kasun.services.PassengerService;
import com.kasun.services.TravelService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class HomePageController {

	private static final Logger log = LoggerFactory
			.getLogger(HomePageController.class);

	public static int children;
	public static int adults;

	@Autowired
	TravelService travelService;

	@Autowired
	PassengerService passengerService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String adminLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		System.out.println("adminlogin");
		System.out.println("Username: " + username);
		if (username.equals("admin") && password.equals("admin")) {
			return "redirect:/users";
		}
		return "redirect:/";
	}

	@RequestMapping("/registertravel")
	public ModelAndView registerTravel(@ModelAttribute Travel travel) {

		List<String> cities = new ArrayList<String>();
		cities.add("Colombo(SRI)");
		cities.add("Maththala(SRI)");
		cities.add("Cidny(AUS)");
		cities.add("London(ENG)");

		Map<String, List> map = new HashMap<String, List>();
		map.put("cityList", cities);
		return new ModelAndView("registertravel", "map", map);
	}

	@RequestMapping("/travelinsert")
	public String inserTravel(@ModelAttribute Travel travel) {
		System.out.println("Travel_ID: Before Null check "
				+ travel.getTravel_id());
		if (travel != null) {
			System.out.println("User_ID: " + travel.getFlight_num());
			System.out.println("User_FirstName: " + travel.getGoing_to());
			travelService.insertData(travel);
		}
		return "redirect:/getTravelList";
	}

	@RequestMapping("/getPassengerList")
	public ModelAndView getPassengerLIst() {
		List<Passenger> passengerList = passengerService.getPassengerList();
		return new ModelAndView("passengerList", "passengerList", passengerList);
	}

	@RequestMapping("/getTravelList")
	public ModelAndView getTravelLIst() {
		log.info("getting Travel List");
		List<Travel> travelList = travelService.getTravelList();
		return new ModelAndView("travelList", "travelList", travelList);

	}

	@RequestMapping("/serchFlights")
	public ModelAndView serchFlights(@ModelAttribute SearchTravel searchTravel) {
		adults = searchTravel.adults;
		children = searchTravel.children;

		List<FlightSerchResult> flightSerchResultList = travelService
				.getSerchedTravelList(searchTravel);

		return new ModelAndView("flightSerchResultList",
				"flightSerchResultList", flightSerchResultList);
	}

	@RequestMapping("/edittravel")
	public ModelAndView editTravel(@RequestParam String id,
			@ModelAttribute Travel travel) {

		travel = travelService.getTravel(id);

		log.info("Selected Travel ID: " + travel.travel_id);

		log.info("Travel Path " + travel.leaving_from + " from going to "
				+ travel.going_to);

		List<String> cityList = new ArrayList<String>();

		cityList.add("Colombo(SRI)");
		cityList.add("Maththala(SRI)");
		cityList.add("Cidny(AUS)");
		cityList.add("London(ENG)");

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("cityList", cityList);
		map.put("travel", travel);

		return new ModelAndView("edittravel", "map", map);

	}

	@RequestMapping("/buyTicket")
	public String buyTicket(@ModelAttribute String id) {
		log.info("Buy Ticket Travel ID: " + id);
		return "buyTicket";
	}

	@RequestMapping("/updatetravel")
	public String updateTravel(@ModelAttribute Travel travel) {
		log.info("travel update in controller, travel id: "
				+ travel.getTravel_id());
		log.info("travel update in controller, flight id: "
				+ travel.getFlight_num());
		travelService.updateData(travel);
		return "redirect:/getTravelList";
	}

	@RequestMapping("/deletetravel")
	public String deleteTravel(@RequestParam String id) {
		log.info("id = " + id);
		travelService.deleteData(id);
		return "redirect:/getTravelList";
	}

	@RequestMapping("/insertpassenger")
	public String insertPassenger(@ModelAttribute Passenger passenger) {
		passenger.setBooking_id("TKT_01_111");
		if (passenger != null) {
			passengerService.insertData(passenger);
		}
		return "finalpage";
	}
}
