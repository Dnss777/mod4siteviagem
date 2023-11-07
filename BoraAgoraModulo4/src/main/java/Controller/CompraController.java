package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import dao.CompraDAO;
import dao.DestinosDAO;
import model.Cliente;
import model.Compra;
import model.Destinos;


@WebServlet(urlPatterns = {"/cad-compra","/compra", "/compra-save", "/compra-delete", "/compra-edit"})
public class CompraController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    Cliente cliente = new Cliente();
    ClienteDAO cdao = new ClienteDAO();
    CompraDAO cmdao = new CompraDAO();
    DestinosDAO ddao = new DestinosDAO();
   Destinos destino = new Destinos();

    public CompraController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
List <Destinos> destinos = ddao.read();
request.setAttribute("listaDestinos", destinos);
List <Cliente> clientes = cdao.read();
request.setAttribute("listaClientes", clientes);      

String route = request.getServletPath();
        switch (route) {
        case "/cad-compra":
        cadastrar(request,response);
        break;
        
        case "/compra":
            read(request,response);
            break;
        case "/compra-save":
            save(request,response);
            break;
        case "/compra-delete":
            delete(request,response);
            break;
        case "/compra-edit":
			edit(request, response);
			break;
		             
            default:        	    	
  response.sendRedirect("/index.html");
            break;
        }
    }
    protected void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher rd=request.getRequestDispatcher("./formComprar.jsp");
        rd.forward(request, response);
    
    }
        protected void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            Compra compra = new Compra();
            int idcliente = Integer.parseInt(request.getParameter("cliente")); 
            int iddestino = Integer.parseInt(request.getParameter("destinos"));
            compra.setCliente(cdao.readById(idcliente));  
            compra.setDestinos(ddao.readById(iddestino));              
           
            
            compra.setData_Compra(request.getParameter("data_Compra"));
            compra.setTotal_Compra(Float.parseFloat(request.getParameter("total_Compra")));
            
            if(request.getParameter("id")!=null){
                compra.setId_Compra(Integer.parseInt(request.getParameter("id")));
                cmdao.update(compra);

            }else {
                cmdao.create(compra);
            }
            response.sendRedirect("compra");

        }

        protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            List<Compra>compra = cmdao.read();
            request.setAttribute("compra", compra);
            RequestDispatcher rd=request.getRequestDispatcher("./compra.jsp");
            rd.forward(request, response);
            }

        protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            int id = Integer.parseInt(request.getParameter("id"));
            cmdao.delete(id);
            response.sendRedirect("./compra");
            
    }
        protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		int id = Integer.parseInt(request.getParameter("id"));
    		
    		Compra compra = cmdao.readById(id);
    		
    		request.setAttribute("compra", compra);

    		RequestDispatcher rd = request.getRequestDispatcher("./editCompra.jsp");
    		rd.forward(request, response);
    	
    	    	
    	}
    	
    	}
