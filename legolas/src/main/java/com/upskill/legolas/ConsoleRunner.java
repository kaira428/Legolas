package com.upskill.legolas;

import java.util.List;

import com.upskill.legolas.models.User;
import com.upskill.legolas.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class ConsoleRunner implements CommandLineRunner{

    @Autowired
    private UserRepository userRepository;
    
    @Override
    public void run(String... args) throws Exception {
        System.out.println("From ConsoleRunner");

        List<User> testUsers = userRepository.findAll();

        for (User user : testUsers) {
            System.out.printf("User Fullname : %s %s\n",user.getFirst_name(), user.getLast_name());
        }        
    }    
}
