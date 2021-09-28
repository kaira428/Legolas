package com.upskill.legolas.controllers;

import com.upskill.legolas.models.Password;
import com.upskill.legolas.models.User;
import com.upskill.legolas.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

    
    //Update user details
    @PostMapping("/updateUserDetails")
    private String updateUserDetails(@ModelAttribute("user")User theUser, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "update_user_details";
        }

        return null;
    }

    //Update user password
    @PostMapping("/updateUserPassword")
    private String updateUserPassword(@ModelAttribute("user")User theUser,
    @ModelAttribute("thePassword")Password thePassword,
    BindingResult bindingResult,
    RedirectAttributes ra,
    Model model) {

        if (bindingResult.hasErrors()) {
            ra.addFlashAttribute("failedMessage", "Password Change Failed!");
            return "update_user_password";
        }

        //current password enter by user
        String currentPassword = thePassword.getCurrentPassword();

        //get the encrypted password from the User DB
        Long userId = theUser.getUser_id();

        User loginUser = userRepository.getById(userId);
        String currentEncryptedPassword = loginUser.getPassword();

        //check if entered password matches the one in DB
        boolean result = bcryptPasswordEncoder.matches(currentPassword, currentEncryptedPassword);

        if (result) {
//		Current entered password matched the one in DB.
//		Encrypt the new password and set it in the User object, loginUser, before saving it
			String encryptedPassword = bcryptPasswordEncoder.encode(thePassword.getNewPassword());
            
            loginUser.setPassword(encryptedPassword);

        // Save new password to User DB
            userRepository.save(loginUser);

            ra.addAttribute("message", "Password successfully changed.");
        }
        else {
            ra.addAttribute("failedMessage", "Password change FAILED.");
        }
        return "placeholder for redirect URL";
    }
}
