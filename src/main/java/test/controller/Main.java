package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import test.service.Aservice;

/**
 * Created by Gvozd on 24.07.2017.
 */
@Controller
public class Main {

    @Autowired
    Aservice aservice;

    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        mav.addObject("now",aservice.getAll());
        return mav;
    }

    @RequestMapping("/test")
    public ModelAndView test(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("test");
        mav.addObject("now",aservice.getAll());
        return mav;
    }
}
