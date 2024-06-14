package com.axa.warehouse;

import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class CustomPermissionEvaluator implements PermissionEvaluator {
    private final UserProfileSecurity userProfileSecurity;
    public CustomPermissionEvaluator(UserProfileSecurity userProfileSecurity) {
        this.userProfileSecurity = userProfileSecurity;
    }
    @Override
    public boolean hasPermission(Authentication authentication,
                                 Object targetDomainObject, Object permission) {
        // Not used in this example
        return false;
    }
    @Override
    public boolean hasPermission(Authentication authentication,
                                 Serializable targetId,
                                 String targetType, Object permission) {
        if ("UserProfile".equals(targetType)) {
            return userProfileSecurity.isOwner(authentication, (Long) targetId);
        }
        return false;
    }
}