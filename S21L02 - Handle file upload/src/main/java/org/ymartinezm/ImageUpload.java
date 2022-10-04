package org.ymartinezm;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class ImageUpload
 */
@WebServlet("/ImageUpload")
public class ImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Para manejar la imagen deberemos hacer uso de un de las clases de nuestro .jar
		//Usamos DiskFileItemFactory porque guardarémos directo en nuestro Disco duro
		ServletFileUpload upload = new ServletFileUpload( new DiskFileItemFactory() );
		
		//Si pusimos multiple entonces recibirémos una lista de archivos
		try {
			List<FileItem> images = upload.parseRequest(request);
			
			//Recordiendo lista
			for(FileItem image: images) {
				String name = image.getName();
				
				try {//Poniendolo en Try porque en Linux o Unix puede crashear
					name = name.substring(name.lastIndexOf("\\")+1); //Leyendo sólo nombre del archivo
				}catch(Exception e) {
					System.out.print(e);
				}
				
				System.out.println(image.getName()); //En windows obtenemos todo el path
			}
			
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
