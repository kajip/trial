package org.kajip.trial;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CheckController {

    @RequestMapping("/monitoring/check")
    @ResponseBody
    public String invoke() {
        return "o.k.";
    }
}
