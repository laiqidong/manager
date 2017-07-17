/*
package com.laiqd.config;


import com.zwsystem.entity.MenuEntity;
import com.zwsystem.service.impl.MenuServiceImpl;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler {
    @Resource
    private MenuServiceImpl menuService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        MyUserDetails userDetails = (MyUserDetails) authentication.getPrincipal();
        request.getSession().setAttribute("staffname", userDetails.getStaffname());
        List<MenuEntity> menuEntities = menuService.findMenuByUser(userDetails.getId());
        request.getSession().setAttribute("menus", menuEntities);
        response.sendRedirect("home");
    }
}
*/
