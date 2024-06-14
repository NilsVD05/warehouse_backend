package com.axa.warehouse.model;

import jakarta.persistence.Entity;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class NewDocument {
    private String title;
    private int sortOrder;
    private int size;
    private Long docFolderId;
}
