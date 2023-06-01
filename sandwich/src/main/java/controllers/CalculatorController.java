package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
    @GetMapping
    public String getView() {
        return "WEB-INF/views/calculator";
    }
    @PostMapping
    public String calculator(@RequestParam String x1, @RequestParam String x2, @RequestParam String action,Model model) {
        String msg = "";
        double div = 0;
        int sum,sub;
        long mul;
        model.addAttribute("x1",x1);
        model.addAttribute("x2",x2);
        try {
            int x1_int = Integer.parseInt(x1);
            int x2_int = Integer.parseInt(x2);
            div = (double) x1_int/x2_int;
            sum = x1_int+x2_int;
            sub = x1_int-x2_int;
            mul = x1_int*x2_int;
        }catch (Exception e) {
            msg = "input invalid";
            model.addAttribute("result",msg);
            return "WEB-INF/views/calculator";
        }
        switch (action){
            case "add":
                msg = ""+sum;
                break;
            case "sub":
                msg = ""+sub;
                break;
            case "div":
                msg = ""+div;
                break;
            case "mul":
                msg = ""+mul;
                break;
            default:
                break;
        }
        model.addAttribute("result",msg);
        return "WEB-INF/views/calculator";
    }
}
