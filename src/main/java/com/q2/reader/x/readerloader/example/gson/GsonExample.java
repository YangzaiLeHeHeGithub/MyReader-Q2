package com.q2.reader.x.readerloader.example.gson;

import com.google.gson.Gson;
import com.q2.reader.x.readerloader.example.common_io.CommonIOExample;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Stream;

import static java.util.stream.Collectors.toList;
@Service
public class GsonExample {
    private static Gson gson;
    static {
        gson = new Gson();
    }

    public List<BookExample> parseBookJsonContent(String bookJsonContent){
        CommonIOExample commonIOExample = new CommonIOExample();
        String bookJsonPath = "novels/zh_cn/source/book.json";
        String parseBookJSON = commonIOExample.parseBookJSON(bookJsonPath);
        BookExample[] bookExamples = gson.fromJson(parseBookJSON, BookExample[].class);

        return Stream.of(bookExamples).collect(toList());
    }

    public static void main(String[] args) {
        GsonExample gsonExample = new GsonExample();
        String bookJsonPath = "novels/zh_cn/source/book.json";
        gsonExample.parseBookJsonContent(bookJsonPath);
    }
}
