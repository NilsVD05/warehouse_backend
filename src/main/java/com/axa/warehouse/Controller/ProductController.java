package com.axa.warehouse.Controller;

import com.axa.warehouse.model.Product;
import com.axa.warehouse.repository.ProductRepository;
import com.axa.warehouse.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("products")
@CrossOrigin
public class ProductController {
    @Autowired
    private ProductRepository productRepository;


    @Autowired
    private ProductService productService;

    @GetMapping
    @PreAuthorize("hasAuthority('ROLE_STAFF_MEMBER')")
    public Collection<Product> getProducts() {
        return productService.getAllProducts();
    }
    @PostMapping("{productName}")
    @PreAuthorize("hasAnyAuthority('ROLE_ASSISTANT_MANAGER', 'ROLE_MANAGER', 'ROLE_ADMIN')")
    public void addProduct(@PathVariable String productName) {
        productService.addProduct(productName);
    }
    @DeleteMapping("{id}")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN', 'ROLE_MANAGER')")
    public void removeProduct(@PathVariable long id) {
        productService.deleteProductById(id);
    }
}
