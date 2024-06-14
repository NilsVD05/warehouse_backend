package com.axa.warehouse.authentication;

import lombok.Data;

@Data
public class AuthRequest {
    private String username;
    private String password;
}
