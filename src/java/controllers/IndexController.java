/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.CircleDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 *@uthor David Lui
 */

@Controller
public class IndexController {

    public IndexController() {
        
    }
    @RequestMapping(value="/index")
    public ModelAndView displayIndex(){
        ModelAndView mv = new ModelAndView("index");
        
        
        return mv;
    } 

    
}
