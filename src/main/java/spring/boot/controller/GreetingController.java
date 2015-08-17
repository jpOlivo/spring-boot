package spring.boot.controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import spring.boot.model.Greeting;
import spring.boot.model.MyThing;

@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();
    
	/**
     * Write a JSON REST service
     *
     * @param name the name
     * @return the greeting
     */
    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", required=false, defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(),
                            String.format(template, name));
    }

    /**
     * Write an XML REST service
     *
     * @return the my thing
     */
    @RequestMapping("/thing")
    public MyThing thing() {
        return new MyThing("Juan");
    }
}
