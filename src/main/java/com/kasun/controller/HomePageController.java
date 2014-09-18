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

import com.kasun.dao.TravelDaoImpl;
import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.Passenger;
import com.kasun.domain.SearchTravel;
import com.kasun.domain.Travel;
import com.kasun.domain.User;
import com.kasun.services.PassengerService;
import com.kasun.services.TravelService;
import com.kasun.services.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class HomePageController {
	
	private static final Logger log = LoggerFactory.getLogger(HomePageController.class);
	
	public static int children;
	public static int adults;

	@Autowired
	UserService userService;

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

	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute User user) {

		List<String> genderList = new ArrayList<String>();
		genderList.add("male");
		genderList.add("female");

		List<String> cityList = new ArrayList<String>();
		cityList.add("Badulla");
		cityList.add("Colombo");
		cityList.add("Kandy");
		cityList.add("Jafna");

		Map<String, List> map = new HashMap<String, List>();
		map.put("genderList", genderList);
		map.put("cityList", cityList);
		return new ModelAndView("register", "map", map);
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

	@RequestMapping("/insert")
	public String inserData(@ModelAttribute User user) {
		System.out.println("User_ID: Before Null check " + user.getUserId());
		if (user != null) {
			System.out.println("User_ID: " + user.getUserId());
			System.out.println("User_FirstName: " + user.getFirstName());
			userService.insertData(user);
		}
		return "redirect:/getList";
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

	@RequestMapping("/getList")
	public ModelAndView getUserLIst() {
		List<User> userList = userService.getUserList();
		return new ModelAndView("userList", "userList", userList);
	}

	@RequestMapping("/users")
	public String usersPage() {
		return ("users");
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
		children= searchTravel.children;
		
		log.info("Serching Travels");
		log.info("searchTravel going to: "
				+ searchTravel.getGoingto());
		List<FlightSerchResult> flightSerchResultList = travelService
				.getSerchedTravelList(searchTravel);

		return new ModelAndView("flightSerchResultList",
				"flightSerchResultList", flightSerchResultList);
	}

	@RequestMapping("/edit")
	public ModelAndView editUser(@RequestParam String id,
			@ModelAttribute User user) {

		user = userService.getUser(id);

		List<String> genderList = new ArrayList<String>();
		genderList.add("male");
		genderList.add("female");

		List<String> cityList = new ArrayList<String>();
		cityList.add("delhi");
		cityList.add("gurgaon");
		cityList.add("meerut");
		cityList.add("noida");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("genderList", genderList);
		map.put("cityList", cityList);
		map.put("user", user);

		return new ModelAndView("edit", "map", map);

	}
	
	@RequestMapping("/edittravel")
	public ModelAndView editTravel(@RequestParam String id,
			@ModelAttribute Travel travel) {

		travel = travelService.getTravel(id);
		
		log.info("Selected Travel ID: "+travel.travel_id);
		
		log.info("Travel Path "+travel.leaving_from+" from going to "+travel.going_to);

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

	@RequestMapping("/update")
	public String updateUser(@ModelAttribute User user) {
		userService.updateData(user);
		return "redirect:/getList";
	}
	
	@RequestMapping("/buyTicket")
	public String buyTicket(@ModelAttribute User user) {
		return "buyTicket";
	}
	
	@RequestMapping("/updatetravel")
	public String updateTravel(@ModelAttribute Travel travel) {
		log.info("travel update in controller, travel id: "+travel.getTravel_id());
		log.info("travel update in controller, flight id: "+travel.getFlight_num());
		travelService.updateData(travel);
		return "redirect:/getTravelList";
	}
	
	@RequestMapping("/deletetravel")
	public String deleteTravel(@RequestParam String id) {
		log.info("id = " + id);
		travelService.deleteData(id);
		return "redirect:/getTravelList";
	}

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		log.info("id = " + id);
		userService.deleteData(id);
		return "redirect:/getList";
	}
	
	@RequestMapping("/insertpassenger")
	public String inserPassenger(@ModelAttribute Passenger passenger) {
		System.out.println("Passenger_ID: Before Null check " + passenger.getId());
		if (passenger != null) {
			passengerService.insertData(passenger);
		}
		return "redirect:/finalpage";
	}	
}
