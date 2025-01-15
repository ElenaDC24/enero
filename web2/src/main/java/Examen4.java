import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Scanner;

public class Examen4 {

	public static void main(String[] args) {

		System.out.println("introduce la fecha");
		Scanner sc = new Scanner(System.in);

		DateLocal fecha = request.getParameter("fecha");

		Calendar calendario = Calendar.getInstance();

		// convierto un texto de cadena en una fecha Date
		// con un formateador
		DateFormat formateador = new SimpleDateFormat("yyyy-MM-dd");
		Date fecha = formateador.parse(fechaTexto);
		calendario.setTime(fecha);
		

	}

}
