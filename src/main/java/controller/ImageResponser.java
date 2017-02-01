package controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Created by y.baidiuk on 06/12/2016.
 */
@WebServlet("/imageResponser")
public class ImageResponser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String imageName = req.getParameter("imageName");


        File file = new File(imageName);
        if (!file.exists()) {
            System.out.println("file not exist");
            ClassLoader classLoader = getClass().getClassLoader();
            file = new File(classLoader.getResource("container.jpg").getFile());
        }
        FileInputStream fileInputStream = null;
        byte[] bFile = new byte[(int) file.length()];

        try {
            //convert file into array of bytes
            fileInputStream = new FileInputStream(file);
            fileInputStream.read(bFile);
            fileInputStream.close();
        } catch (FileNotFoundException e) {


            System.out.println("File " + imageName + "  Existiert nicht");
        }
        resp.setContentType("image/jpeg");
        resp.setContentLength(bFile.length);
        resp.getOutputStream().write(bFile);
    }
}
