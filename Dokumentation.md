# Projektname

## Beschreibung
Dieses Projekt ist eine Webanwendung, die es Benutzern ermöglicht, Dokumente in Ordnern zu verwalten. Jedes Dokument hat Eigenschaften wie Titel, Sortierreihenfolge, URL und Größe. Die Ordner haben einen Titel und eine Sortierreihenfolge. Die Anwendung unterstützt mehrere Benutzer und bietet eine RESTful API.

## Technologien
Das Projekt verwendet die folgenden Technologien und Frameworks:
- **Java**: Die Hauptprogrammiersprache des Projekts.
- **Spring Boot**: Ein Framework, das die Erstellung von stand-alone, produktionsbereiten Spring-basierten Anwendungen erleichtert.
- **Maven**: Ein Werkzeug zur Verwaltung und zum Verständnis von Projekten.
- **SQL**: Die Sprache, die für die Interaktion mit der Datenbank verwendet wird.

## Multiuser-Aspekt
Die Anwendung unterstützt mehrere Benutzer mit unterschiedlichen Rollen und Berechtigungen. Die Rollen sind hierarchisch organisiert, wie in der `SecurityConfig`-Klasse definiert:

```java
@Bean
public RoleHierarchy roleHierarchy() {
    RoleHierarchyImpl roleHierarchy = new RoleHierarchyImpl();
    roleHierarchy.setHierarchy("ROLE_ADMIN > ROLE_MANAGER > ROLE_ASSISTANT_MANAGER > ROLE_STAFF_MEMBER > ROLE_USER");
    return roleHierarchy;
}
````
Die Rollen und Berechtigungen sind wie folgt:

- **ROLE_ADMIN**: Hat Zugriff auf alle Ressourcen und Funktionen der Anwendung. Dies umfasst das Hinzufügen, Bearbeiten und Löschen von Dokumenten und Ordnern.
- **ROLE_MANAGER**: Hat Zugriff auf die meisten Ressourcen, kann aber keine administrativen Aufgaben durchführen. Dies umfasst das Hinzufügen und Bearbeiten von Dokumenten und Ordnern, aber nicht das Löschen.
- **ROLE_ASSISTANT_MANAGER**: Hat eingeschränkten Zugriff auf Ressourcen. Dies umfasst das Anzeigen von Dokumenten und Ordnern, aber nicht das Hinzufügen, Bearbeiten oder Löschen.
- **ROLE_STAFF_MEMBER**: Kann nur auf bestimmte Ressourcen zugreifen und hat eingeschränkte Funktionen. Dies umfasst das Anzeigen von Dokumenten und Ordnern, die ihnen zugewiesen sind.
- **ROLE_USER**: Hat den geringsten Zugriff und kann nur auf persönliche Ressourcen zugreifen. Dies umfasst das Anzeigen von Dokumenten und Ordnern, die ihnen zugewiesen sind.

Die Zugriffssteuerung auf die Ressourcen wird in der `SecurityConfig`-Klasse konfiguriert:

```java
@Bean
public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    http
            .csrf(AbstractHttpConfigurer::disable)
            .authorizeHttpRequests(authorize -> authorize
                    .requestMatchers("/auth/**").permitAll()
                    .requestMatchers("/api/user/profile").hasRole("USER")
                    .requestMatchers("/swagger-ui/**").hasRole("DEVELOPER")
                    .requestMatchers("/v3/api-docs/**").hasRole("DEVELOPER")
                    .anyRequest().authenticated()
            )
            .sessionManagement(session -> session
                    .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
            );

    http.addFilterBefore(jwtRequestFilter, UsernamePasswordAuthenticationFilter.class);

    return http.build();
}
```
## Hervorzuhebende Merkmale
- **JWT (JSON Web Tokens)**: Die Anwendung verwendet JWT für die Authentifizierung und Autorisierung der Benutzer. Dies stellt sicher, dass nur authentifizierte Benutzer auf die Ressourcen zugreifen können und dass Benutzer nur auf die Ressourcen zugreifen können, für die sie berechtigt sind.
- **Hierarchische Rollenstruktur**: Die Anwendung unterstützt eine hierarchische Rollenstruktur, die eine fein abgestimmte Zugriffssteuerung ermöglicht. Dies ermöglicht es der Anwendung, unterschiedliche Zugriffsstufen für verschiedene Benutzer bereitzustellen.
- **JPA und Hibernate**: Die Anwendung verwendet JPA und Hibernate für die Datenpersistenz und ermöglicht eine effiziente und einfache Interaktion mit der Datenbank. Dies erleichtert das Hinzufügen, Bearbeiten und Löschen von Daten in der Datenbank.
- **Jackson-Bibliothek**: Die Anwendung verwendet die Jackson-Bibliothek, um bidirektionale Beziehungen zwischen den Entitäten zu verwalten und unendliche Rekursionen zu vermeiden. Dies stellt sicher, dass die Anwendung korrekt funktioniert und dass die Daten korrekt serialisiert und deserialisiert werden.
- **RESTful API**: Die Anwendung bietet eine RESTful API, die es ermöglicht, die Anwendung mit verschiedenen Clients zu verwenden. Dies macht die Anwendung flexibel und erweiterbar.
