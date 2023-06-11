package com.example.alimzhan11last.repositories;

import com.example.alimzhan11last.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
