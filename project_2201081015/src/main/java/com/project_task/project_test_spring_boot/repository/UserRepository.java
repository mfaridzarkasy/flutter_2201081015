package com.project_task.project_test_spring_boot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project_task.project_test_spring_boot.user.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    
    
} 
