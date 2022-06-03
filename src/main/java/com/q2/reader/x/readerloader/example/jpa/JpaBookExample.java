package com.q2.reader.x.readerloader.example.jpa;

import com.q2.reader.x.readerloader.example.gson.BookExample;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JpaBookExample extends JpaRepository<BookExample, Long> {
}
