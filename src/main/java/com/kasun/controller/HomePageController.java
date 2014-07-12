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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kasun.domain.SerchedTravel;
import com.kasun.domain.Travel;
import com.kasun.domain.User;
import com.kasun.services.TravelService;
import com.kasun.services.UserService;

@Controller
public class HomePageController {

	@Autowired
	UserService userService;

	@Autowired
	TravelService travelService;

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
		System.out.println("getting Travel List");
		List<Travel> travelList = travelService.getTravelList();
		return new ModelAndView("travelList", "travelList", travelList);

	}

	@RequestMapping("/Test/serchFlights")
	public ModelAndView serchFlights(@ModelAttribute SerchedTravel serchedTravel) {
		System.out.println("Serching Travels");
		List<Travel> travelList = travelService.getTravelList();
		return new ModelAndView("travelList", "travelList", travelList);

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

	@RequestMapping("/update")
	public String updateUser(@ModelAttribute User user) {
		userService.updateData(user);
		return "redirect:/getList";
	}

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		System.out.println("id = " + id);
		userService.deleteData(id);
		return "redirect:/getList";
	}
}