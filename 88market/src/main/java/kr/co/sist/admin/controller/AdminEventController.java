package kr.co.sist.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminEventController {

    @GetMapping("/event/add")
    public String eventAdd() {
        return "admin/event/eventAdd";
    }
	
}
