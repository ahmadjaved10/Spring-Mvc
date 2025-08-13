package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.Service.userService;
import springmvc.user.User;

@Controller
public class UserRegistration {

    @Autowired
    private userService userService;

    @RequestMapping("/contact")
    public String showForm(Model model) {
        model.addAttribute("hos", "Hospital Management System");
        model.addAttribute("dec", "Welcome to Registration");
        model.addAttribute("us", "user registed as");

        return "contact";
    }

    @RequestMapping(path = "/user", method = RequestMethod.POST)
    public String userRegister(@ModelAttribute User user, Model model) {
        if (user.getUsername().isBlank() || user.getEmail().isBlank() || user.getPassword().isBlank()) {
            return "redirect:/contact";
        }

        model.addAttribute("user", user);
        model.addAttribute("us", "user registed as");
        userService.createUser(user);

        return "userregister";
    }

    @RequestMapping("/billing")
    public String billingForm(@ModelAttribute User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("billingAddress", new String());

        return "billing";
    }

    @RequestMapping(path = "/saveBilling", method = RequestMethod.POST)
    public String saveBilling(@ModelAttribute User user, String billingAddress, Model model) {
        User loggedInUser = getLoggedInUser(user);
        loggedInUser.setBillingAddress(billingAddress);
        userService.updateUser(loggedInUser);
        model.addAttribute("message", "Billing Information Saved");
        model.addAttribute("user", loggedInUser);

        return "invoice";
    }

    private User getLoggedInUser(User user) {
        // Implement your logic to get the currently logged-in user
        // For simplicity, assuming the user passed to this method is the logged-in user
        return user;
    }
}







/*
 * @RequestMapping(path="/user", method=RequestMethod.POST) public String
 * userRegister(
 * 
 * @RequestParam("email") String userEmail,
 * 
 * @RequestParam("username")String username,
 * 
 * @RequestParam("password")String userPassword, Model model ) {
 * System.out.println("user email"+ userEmail); System.out.println("user name"+
 * username); System.out.println("user pass"+ userPassword);
 * 
 * model.addAttribute("name",username); model.addAttribute("pass",userPassword);
 * model.addAttribute("email",userEmail);
 * 
 * User user=new User();
 * 
 * 
 * return "userregister"; }
 * 
 * }
 */
