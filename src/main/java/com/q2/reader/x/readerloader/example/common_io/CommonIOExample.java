package com.q2.reader.x.readerloader.example.common_io;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * @author 提着月亮去火星
 */
@Slf4j
public class CommonIOExample {

    /**
     * 获取JSON文件内容
     * @param bookJsonPath 书籍JSON文件路径
     * @return 读取到的数据内容
     */
    public String parseBookJSON(String bookJsonPath){

        String bookJsonContent = null;
        try {
            bookJsonContent = FileUtils.readFileToString(new File(bookJsonPath), StandardCharsets.UTF_8);
        } catch (IOException e) {
            log.error("CommonIOExample.parseBookJSON  failed",e.getMessage());
        }
        return bookJsonContent;

    }


}
