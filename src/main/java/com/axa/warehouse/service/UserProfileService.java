package com.axa.warehouse.service;

import com.axa.warehouse.model.User;
import com.axa.warehouse.model.UserProfile;
import com.axa.warehouse.repository.UserProfileRepository;
import com.axa.warehouse.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserProfileService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserProfileRepository userProfileRepository;

    public Optional<UserProfile> getProfileByUsername(String username) {
        Optional<User> user = userRepository.findByUsername(username);
        return user.map(User::getUserProfile);
    }

    public UserProfile updateProfile(String username, UserProfile newProfile) {
        Optional<User> user = userRepository.findByUsername(username);
        if (user.isPresent()) {
            UserProfile userProfile = user.get().getUserProfile();
            userProfile.setFirst_name(newProfile.getFirst_name());
            userProfile.setLast_name(newProfile.getLast_name());
            userProfile.setAddress(newProfile.getAddress());
            userProfile.setProfilepicture_url(newProfile.getProfilepicture_url());
            userProfileRepository.save(userProfile);
            return userProfile;
        }
        return null;
}
}