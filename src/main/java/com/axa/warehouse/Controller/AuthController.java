package com.axa.warehouse.Controller;

import com.axa.warehouse.authentication.AuthRequest;
import com.axa.warehouse.authentication.AuthResponse;
import com.axa.warehouse.authentication.JwtUtil;
import com.axa.warehouse.model.UserProfile;
import com.axa.warehouse.service.CustomUserDetailsService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
@CrossOrigin
public class AuthController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @Autowired
    private JwtUtil jwtUtil;

    @GetMapping("/hello")
    public String hello() {
        return "Hello World";
    }

    @PutMapping
    public ResponseEntity<?> updateProfileUser(@RequestBody UserProfile user) {
        return ResponseEntity.ok(user);
    }

    @PostMapping("/login")
    public ResponseEntity<?> createAuthenticationToken(@RequestBody AuthRequest authRequest) throws Exception {
        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authRequest.getUsername(), authRequest.getPassword()));
        } catch (BadCredentialsException e) {
            throw new Exception("Incorrect username or password", e);
        }
        final UserDetails userDetails = userDetailsService.loadUserByUsername(authRequest.getUsername());
        final String jwt = jwtUtil.generateToken(userDetails);
        return ResponseEntity.ok(new AuthResponse(jwt));
    }

    @GetMapping("/profile")
    public ResponseEntity<?> getProfileUser(HttpServletRequest request) {
        // Extract the token from the Authorization header
        String authorizationHeader = request.getHeader("Authorization");
        if (authorizationHeader != null && authorizationHeader.startsWith("Bearer ")) {
            String jwt = authorizationHeader.substring(7);
            String username = jwtUtil.extractUsername(jwt);

            // Load the user details
            UserDetails userDetails = userDetailsService.loadUserByUsername(username);

            // Return the user's profile
            return ResponseEntity.ok(userDetails);
        }

        // If the token is not present or invalid, return an unauthorized error
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Unauthorized");
    }


}


