package com.q2.reader.x.readerloader.example.api;


import com.q2.reader.x.readerloader.example.service.ExampleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.FileNotFoundException;

@Slf4j
@RestController
@RequestMapping("reader")
@RequiredArgsConstructor
public class ExampleController {
    private final ExampleService exampleService;
    @GetMapping("/book/parser")
    public void bookParser(){
        log.info("enter ExampleController.bookParser");
        try {
            exampleService.bookParser();
        } catch (FileNotFoundException e) {
            log.error("leave ExampleController.bookParser occurs exception e = {}" ,e.getMessage());
        }
    }
}
