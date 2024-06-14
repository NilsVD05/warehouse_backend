package com.axa.warehouse;

import com.axa.warehouse.model.User;
import com.axa.warehouse.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class UserProfileSecurity {
    @Autowired
    private UserRepository userRepository;
    public boolean isOwner(Authentication authentication, Long profileId) {
        Optional<User> user = userRepository.findByUsername(authentication.getName());
        return user.isPresent() && user.get().getUserProfile().getId().equals(profileId);
    }
}
