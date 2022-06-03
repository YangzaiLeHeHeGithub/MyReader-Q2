package com.q2.reader.x.readerloader.example.gson;

import com.google.gson.annotations.SerializedName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "x_book")
@Getter
@Setter
@ToString
public class BookExample {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @SerializedName(value = "bookid")
    private String bookId;
    @SerializedName(value = "bookname")
    private String bookName;
    @SerializedName(value = "authorname")
    private String authorName;
    @SerializedName(value = "introduce")
    private String introduce;
    private Integer chapterNo;
    @SerializedName(value = "coverpath")
    private String coverPath;
    @SerializedName(value = "bookstatus")
    private String bookStatus;
    private Long words;
    private String tags;
    private Date createTime;
    private Date updateTime;


}
