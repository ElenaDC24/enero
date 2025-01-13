package es.cie.repositories;

import java.util.ArrayList;
import java.util.List;

import es.cie.negocio.Libro;

public class LibroRepositoryMemoria implements LibroRepository {

	private static List<Libro> lista = new ArrayList<Libro>();

	static {

		lista.add(new Libro("1234", "quijote", "pepe", 200));
		lista.add(new Libro("5678", "celestina", "juan", 600));
		lista.add(new Libro("2435", "lazarillo", "luis", 345));
		lista.add(new Libro("7845", "bernarda alba", "paco", 567));
		lista.add(new Libro("1098", "yerma", "fede", 332));
		lista.add(new Libro("3333", "platero", "juan ramon", 567));

	}

	@Override
	public List<Libro> buscarTodos() {
		return lista;
	}

	@Override
	public List<Libro> buscarPorTitulo(String titulo) {
		// este metodo genra una nueva lista que contiene
		// los libros cuyo titulo sea similar
		// al que pasamos

		List<Libro> listaNueva = new ArrayList<Libro>();

		for (Libro l : lista) {

			String tituloLibro = l.getTitulo();
			// titulo del libro
			if (tituloLibro.toLowerCase().contains(titulo.toLowerCase())) {

				listaNueva.add(l);
			}

		}
		return listaNueva;

	}

	@Override
	public List<Libro> buscarPorAutor(String autor) {
		// este metodo genra una nueva lista que contiene
		// los libros cuyo titulo sea similar
		// al que pasamos

		List<Libro> listaNueva = new ArrayList<Libro>();

		for (Libro l : lista) {

			String autorLibro = l.getAutor();
			if (autorLibro.toLowerCase().contains(autor.toLowerCase())) {

				listaNueva.add(l);
			}

		}
		return listaNueva;
	}
}
