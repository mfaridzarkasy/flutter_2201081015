package com.project_task.project_test_spring_boot.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project_task.project_test_spring_boot.repository.UserRepository;
import com.project_task.project_test_spring_boot.user.User;

@RestController
@RequestMapping(path = "/user")
public class UserController {
    
    @Autowired
    private UserRepository userRepository;

    @PostMapping(path = "/add")
    public @ResponseBody User addUser(@RequestParam String nama,
    @RequestParam String email,
    @RequestParam String alamat,
    @RequestParam LocalDate tgl_lahir){

        User springUser = new User();
        springUser.setNama(nama);
        springUser.setEmail(email);
        springUser.setTgl_lahir(tgl_lahir);
        springUser.setAlamat(alamat);
        userRepository.save(springUser);
        return springUser;
    }

    @GetMapping(path = "/all")
    public @ResponseBody Iterable<User> getAllUser(){
        return userRepository.findAll();
    }



}
