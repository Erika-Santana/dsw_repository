package dwsServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/web.do.Servlet")
/*
 * @WebServlet(urlPatterns = {"/oi2.do", "/ola.servlet"})
 * */
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String messages[];
	private int position;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        messages = new String[] {
        	"Hello World!",
        	"Olá mundo!",
        	"Hola, mundo!",
        	"Bounjour, le Mond!",
        	"Hallo, Welt!"
        };
        position = -1;
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //Objeto response foi criado pelo Web ontainer
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Configurando a resposta que o cliente vai receber a partir da response
		//Tentar trazer a maior quantidade de atributos dentro do get ou do post, para economizar memória.
		
		response.setContentType("text/html");

		//Escrevo o que vai aparecer pro usuário
		
		/*
		try {
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Olá Hello Servlet</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>" + messages[usePosition] +"</h1>");
			out.println("</body>");
			out.println("</html>");
			
			
		} finally  {//Aqui ele tá usando o try pra obrigar o fechamento do PrintWriter
			out.close();
		}
		
		*/
		try (PrintWriter out = response.getWriter()){
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Olá Hello Servlet</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>" + messages[usePosition()] +"</h1>");
			out.println("</body>");
			out.println("</html>");
			
		} 
	}

	
	private int usePosition() {
		position++;
		if (position == 5) {
			position = 0;
		}
		return position;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
