package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/save")
public class SandwichCondiments {
    @PostMapping
//    public String save(@RequestParam(name = "condiments") String[] condiments, Model model) {
    public String save(@RequestParam(name = "condiments") String[] condimen, Model model) {
        String msg = "List choosen condiments: ";
        for (String condiment : condimen) {
            msg += condiment;
            msg += ",";
        }
        model.addAttribute("msg", msg);
        return "index";
    }
}
