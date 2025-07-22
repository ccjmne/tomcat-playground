package org.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test-javax")
public class TestServletJavax extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		final PrintWriter out = resp.getWriter();
		out.println(String.format("%20s: %s", "getRequestURL", req.getRequestURL()));
		req.getHeaderNames().asIterator().forEachRemaining(k -> req.getHeaders(k).asIterator()
				.forEachRemaining(v -> out.println(String.format("%20s: %s", k, v))));
	}
}
