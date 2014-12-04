package controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by MagicalChance on 14.09.2014.
 */
public class MainServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");

        String text = req.getParameter("text");

        String character = Transliterator.getCharacter(text);
        req.setAttribute("character", character);


        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }


}
