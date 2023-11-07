package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;
import model.Cliente;
import model.Destinos;



@WebServlet(urlPatterns = {"/destinos", "/destinos-save", "/destinos-delete","/destinos-edit", "/destinos-update"})
public class DestinosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	DestinosDAO ddao = new DestinosDAO();

    public DestinosController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String route = request.getServletPath();
        switch (route) {
        case "/destinos":
            read(request,response);
            break;
        case "/destinos-save":
            save(request,response);
            break;
        case "/destinos-delete":
            delete(request,response);
            break;
            
        case "/destinos-edit":
			edit(request, response);
			break;
		case "/destinos-update":
			update(request, response);
			break;
        default:

            break;
        }
    }
 
    protected void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	Destinos destinos = new Destinos();
    	destinos.setData_Destino(request.getParameter("data"));
    	destinos.setNome_Destino(request.getParameter("destino"));
    	destinos.setValor_Destino(Float.parseFloat(request.getParameter("valor")));
        
        if(request.getParameter("id")!=null){
        	destinos.setId_Destino(Integer.parseInt(request.getParameter("id")));
            ddao.update(destinos);

        }else {
            ddao.create(destinos);
        }
        response.sendRedirect("destinos");
    }
    protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Destinos>destinos = ddao.read();
        request.setAttribute("destinos", destinos);
        RequestDispatcher rd=request.getRequestDispatcher("./destino.jsp");
        rd.forward(request, response);
        }
    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        ddao.delete(id);
        response.sendRedirect("destinos");
    }
    protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		Destinos destinos = ddao.readById(id);
		
		request.setAttribute("destinos", destinos);

		RequestDispatcher rd = request.getRequestDispatcher("./editDestino.jsp");
		rd.forward(request, response);
	
	}
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Destinos destinos = null;
		destinos.setId_Destino(Integer.parseInt(request.getParameter("id")));
		destinos.setNome_Destino(request.getParameter("destinos"));
		destinos.setData_Destino(request.getParameter("data"));
		destinos.setValor_Destino(Float.parseFloat(request.getParameter("valor")));
				
		ddao.update(destinos);
		response.sendRedirect("destinos");
	}
	
	}