package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    
    @RequestMapping("/home")
    public String home(Model model) {
        System.out.println("This is home ahmad");
        
        model.addAttribute("name","Hospital Management System");
        model.addAttribute("id",1234);
        
        List<String> features = new ArrayList<>();
        features.add("Patient Management");
        features.add("Appointment Scheduling");
        features.add("Staff Management");
        features.add("Inventory Management");
        
        model.addAttribute("features", features);
        
        return "index";
    }
    
    @RequestMapping("/about")
    public String about(Model model) {
        System.out.println("This is about");
        
        model.addAttribute("systemName", "Hospital Management System");
        model.addAttribute("overview", "Hospital Management System (HMS) is a comprehensive software solution designed to streamline various aspects of hospital operations.");
        
        List<String> keyFeatures = new ArrayList<>();
        keyFeatures.add("Patient Management: Record and manage patient information, medical history, and appointments.");
        keyFeatures.add("Appointment Scheduling: Schedule appointments for patients with doctors and manage the appointment calendar.");
        keyFeatures.add("Staff Management: Manage hospital staff including doctors, nurses, and administrative personnel.");
        keyFeatures.add("Inventory Management: Keep track of medical supplies, equipment, and other inventory items.");
        
        model.addAttribute("keyFeatures", keyFeatures);
        
        return "about";
    }
    
    @RequestMapping("/help")
    public ModelAndView help() {
        System.out.println("This is help");
        
        ModelAndView model = new ModelAndView();
        
        model.addObject("name", "Hospital Management System Help");
        model.addObject("contact", "For assistance, contact your system administrator.");
        
        return model;
    }
}
