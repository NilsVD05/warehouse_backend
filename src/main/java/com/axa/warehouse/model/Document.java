package com.axa.warehouse.model;

import jakarta.persistence.*;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "app_document")
public class Document {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private int sortOrder;
    private String documentUrl; // fiktiv
    private int size;

    @ManyToOne
    @JoinColumn(name = "docFolder_id")
    private DocFolder docFolder;
}
