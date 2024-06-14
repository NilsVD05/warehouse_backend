package com.axa.warehouse.service;

import com.axa.warehouse.model.DocFolder;
import com.axa.warehouse.model.Document;
import com.axa.warehouse.model.ReturnFolder;
import com.axa.warehouse.repository.DocFolderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DocFolderService {
    @Autowired
    private DocFolderRepository docFolderRepository;

    @Autowired
    private DocumentService documentService;

    public void createFolder(DocFolder docFolder) {
        try {
            docFolderRepository.save(docFolder);
        } catch (Exception e) {
            throw new RuntimeException("Failed to create folder: " + e.getMessage(), e);
        }
    }

    public List<DocFolder> getAll() {
        return docFolderRepository.findAll();
    }

    public ReturnFolder getByFolderId(long id) {
        ReturnFolder returnFolder = new ReturnFolder();
        List<Document> documents = documentService.getByFolderId(id);
        returnFolder.setDocuments(documents);
        returnFolder.setDocFolder(docFolderRepository.findById(id).get());
        int totalSize = 0;
        for (Document document : documents) {
            totalSize += document.getSize();
        }
        returnFolder.setSize(totalSize + " MB");


        return returnFolder;
    }

public List<ReturnFolder> getAllFolders() {
        List<DocFolder> docFolders = docFolderRepository.findAll();
        List<ReturnFolder> returnFolders = new ArrayList<>();
        for (DocFolder docFolder : docFolders) {
            ReturnFolder returnFolder = new ReturnFolder();
            List<Document> documents = documentService.getByFolderId(docFolder.getId());
            returnFolder.setDocuments(documents);
            returnFolder.setDocFolder(docFolder);
            int totalSize = 0;
            for (Document document : documents) {
                totalSize += document.getSize();
            }
            returnFolder.setSize(totalSize + " MB");
            returnFolders.add(returnFolder);
        }
        return returnFolders;
    }




}
