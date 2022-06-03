package com.q2.reader.x.readerloader.example.service;

import com.q2.reader.x.readerloader.example.gson.BookExample;
import com.q2.reader.x.readerloader.example.gson.GsonExample;
import com.q2.reader.x.readerloader.example.jpa.JpaBookExample;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.io.FileNotFoundException;
import java.util.Date;
import java.util.List;

@Slf4j
@Service
@AllArgsConstructor
@NoArgsConstructor
public class ExampleService {
    private  GsonExample gsonExample;
    private  JpaBookExample jpaBookExample;

    public List<BookExample>  bookParser() throws FileNotFoundException {
        String bookJsonPath = getBookJsonPath();
        if(StringUtils.isEmpty(bookJsonPath)){
            throw new FileNotFoundException("找不到JOSN文件");
        }
        List<BookExample> bookExamples = gsonExample.parseBookJsonContent(bookJsonPath);
        Date currentDate = new Date();
        bookExamples.forEach(bookExample ->
        {
            bookExample.setCreateTime(currentDate);
            bookExample.setUpdateTime(currentDate);
        });
        return jpaBookExample.saveAll(bookExamples);
    }
    private String getBookJsonPath(){
        return "novels/zh_cn/source/book.json";
    }
}
