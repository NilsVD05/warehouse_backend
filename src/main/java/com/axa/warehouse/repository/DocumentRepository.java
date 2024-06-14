package com.axa.warehouse.repository;

import com.axa.warehouse.model.DocFolder;
import com.axa.warehouse.model.Document;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DocumentRepository    extends JpaRepository<Document, Long> {
    List<Document> findByDocFolder_Id(long id);
}
