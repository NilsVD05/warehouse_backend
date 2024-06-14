package com.axa.warehouse.service;

import com.axa.warehouse.model.DocFolder;
import com.axa.warehouse.model.Document;
import com.axa.warehouse.model.NewDocument;
import com.axa.warehouse.repository.DocFolderRepository;
import com.axa.warehouse.repository.DocumentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocumentService {
    @Autowired
    private DocumentRepository documentRepository;

    @Autowired
    private DocFolderRepository docFolderRepository;

    public List<Document> getByFolderId(long id) {
        return documentRepository.findByDocFolder_Id(id);
    }

    public void createDocument(NewDocument newDocument) {
        try {
            DocFolder docFolder = docFolderRepository.findById(newDocument.getDocFolderId()).orElseThrow(() -> new RuntimeException("Folder not found"));
            Document document = new Document();
            document.setTitle(newDocument.getTitle());
            document.setSortOrder(newDocument.getSortOrder());
            document.setSize(newDocument.getSize());
            document.setDocumentUrl("C:/Prüfung/" + docFolder.getTitle());
            document.setDocFolder(docFolder);
            documentRepository.save(document);
        } catch (Exception e) {
            throw new RuntimeException("Failed to create document: " + e.getMessage(), e);
        }
    }
}
