package serwlety;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DostarczycielDanych;
import model.Pracownik;

@WebServlet("/pracownicy.txt")
public class PracownicyTxt extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   	 response.setContentType("text/plain");
   	 response.setCharacterEncoding("utf-8");
   	 PrintWriter out = response.getWriter();
   	 out.println("Czytam dane...");
   	 
   	 DostarczycielDanych dostarczyciel = new DostarczycielDanych();
   	 List<Pracownik> lista = dostarczyciel.getPracownicy();
   	 out.println("Odczytano " + lista.size() + " pracowników:");
   	 for(Pracownik pracownik : lista) {
   		 out.println(pracownik);
   	 }
   	 out.println("KONIEC");
    }

}



