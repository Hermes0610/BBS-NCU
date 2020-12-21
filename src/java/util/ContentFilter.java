package util;

import util.threadlocal.LocalRequestContextHolder;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ContentFilter extends org.springframework.web.filter.CharacterEncodingFilter {
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        HttpServletRequest req = request;
        LocalRequestContextHolder.setLocalRequestContext(req,response );

        super.doFilterInternal(request, response, filterChain);
    }

    // Process the request/response pair
    // Clean up resources
    public void destroy() {
    }
}
