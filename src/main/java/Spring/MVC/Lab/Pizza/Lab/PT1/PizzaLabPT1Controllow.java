package Spring.MVC.Lab.Pizza.Lab.PT1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaLabPT1Controllow {
	@RequestMapping("/")
	public String HomePage() {
		return "home";
	} 

	@GetMapping("/Meat-Lovers")
	public String specialPizza(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "pizza";
	}

	@GetMapping("/Supreme-Pizza")
	public String SupremePizza(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "pizza";
	}

	@GetMapping("/Veggie-Pizza")
	public String veggiePizza(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "pizza";
	}

	@GetMapping("/Pizza-Builder-Form")
	public String pizzaBuilderForm() {
		return "pizza-Builder-Form";
	}

	@PostMapping("/Pizza-Builder-Results")
	public String submitForm(@RequestParam String size, @RequestParam int toppings, @RequestParam String glutenFree,
			@RequestParam String specialInstructions, Model model) {

		boolean isGlutenFree = "yes".equals(glutenFree);
		double price = calculatePrice(size, toppings, isGlutenFree);
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("isGlutenFree", isGlutenFree);
		model.addAttribute("specialInstructions", specialInstructions);
		model.addAttribute("price", price);
		return "form-results";
	}

	private double calculatePrice(String size, int toppings, boolean isGlutenFree) {

		final double SMALL_PRICE = 7.00;
		final double MEDIUM_PRICE = 10.00;
		final double LARGE_PRICE = 12.00;
		final double GLUTEN_FREE_PRICE = 2.00;
		final double SMALL_TOPPING_PRICE = 0.50;
		final double MEDIUM_TOPPING_PRICE = 1.00;
		final double LARGE_TOPPING_PRICE = 1.25;

		double price;

		if (size.equals("small")) {
			price = SMALL_PRICE + toppings * SMALL_TOPPING_PRICE;
		} else if (size.equals("medium")) {
			price = MEDIUM_PRICE + toppings * MEDIUM_TOPPING_PRICE;
		} else if (size.equals("large")) {
			price = LARGE_PRICE + toppings * LARGE_TOPPING_PRICE;
		} else {
			throw new IllegalArgumentException("Invalid Pizza Size: " + size);
		}

		if (isGlutenFree) {
			price += GLUTEN_FREE_PRICE;
		}

		return price;
	}
	
	@GetMapping("/review")
	  public String reviewForm(Model model) {
	    return "review";
	  }
	  @PostMapping("/review")
	  public String submitReview(String name, String comment, int rating, Model model) {
	    model.addAttribute("name", name);
	    model.addAttribute("comment", comment);
	    model.addAttribute("rating", rating);
	    return "review_confirm";
	  }
}
