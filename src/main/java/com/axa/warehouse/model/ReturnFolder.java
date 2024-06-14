package com.axa.warehouse.model;

import lombok.*;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ReturnFolder {
    private DocFolder docFolder;
    private List<Document> documents;
    private String size;
}
