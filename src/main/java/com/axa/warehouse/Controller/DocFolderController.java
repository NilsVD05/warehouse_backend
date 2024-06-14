package com.axa.warehouse.Controller;

import com.axa.warehouse.authentication.AuthResponse;
import com.axa.warehouse.model.DocFolder;
import com.axa.warehouse.model.Document;
import com.axa.warehouse.model.NewDocument;
import com.axa.warehouse.model.ReturnFolder;
import com.axa.warehouse.service.DocFolderService;
import com.axa.warehouse.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/folder")
@CrossOrigin
public class DocFolderController {

    @Autowired
    private DocFolderService docFolderService;

    @Autowired
    private DocumentService documentService;

    @PostMapping("/create")
    public ResponseEntity<String> createFolder(DocFolder docFolder) {
        docFolderService.createFolder(docFolder);
        return ResponseEntity.ok("Folder created successfully");
    }

    @GetMapping
    public ResponseEntity<List<DocFolder>> getAll() {
        return ResponseEntity.ok(docFolderService.getAll());
    }

//    @GetMapping("/{id}")
//    public ResponseEntity<List<Document>> getById(@PathVariable long id) {
//        return ResponseEntity.ok(documentService.getByFolderId(id));
//    }

    @PostMapping("/createDocument")
    public ResponseEntity<String> createDocument(@RequestBody NewDocument newDocument) {
        documentService.createDocument(newDocument);
        return ResponseEntity.ok("Document created successfully");
    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<String> handleRuntimeException(RuntimeException e) {
        return ResponseEntity.status(500).body(e.getMessage());
    }

    @GetMapping("/{id}")
    public ResponseEntity<ReturnFolder> getById(@PathVariable long id) {
        return ResponseEntity.ok(docFolderService.getByFolderId(id));
    }

    @GetMapping("/getAll")
    public ResponseEntity<List<ReturnFolder>> getAllFolders() {

        return  ResponseEntity.ok(docFolderService.getAllFolders());
    }
}
