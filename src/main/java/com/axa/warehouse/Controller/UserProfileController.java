package com.axa.warehouse.Controller;

import com.axa.warehouse.UserProfileSecurity;
import com.axa.warehouse.model.UserProfile;
import com.axa.warehouse.service.UserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/user")
@CrossOrigin
public class UserProfileController {
    @Autowired
    private UserProfileService userProfileService;

    @GetMapping("/profile")
    public ResponseEntity<UserProfile> getProfile(Authentication authentication) {
        Optional<UserProfile> profileOpt = userProfileService
                .getProfileByUsername(authentication.getName());
        return profileOpt.isPresent()
                ? ResponseEntity.ok(profileOpt.get())
                : ResponseEntity.badRequest().build();
    }

    @PutMapping("/profile")
    @PreAuthorize("@userProfileSecurity.isOwner(authentication, #newProfile.id)")
    public ResponseEntity<UserProfile> updateProfile(
            @RequestBody UserProfile newProfile, Authentication authentication) {
        UserProfile updatedProfile = userProfileService
                .updateProfile(authentication.getName(), newProfile);
        return ResponseEntity.ok(updatedProfile);
    }
}