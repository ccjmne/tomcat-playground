package org.example;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		final PrintWriter out = resp.getWriter();
		resp.setContentType("text/plain");
		out.println(String.format("%20s  %s", "", "------------ METHODS ------------"));
		out.println(String.format("%20s: %s", "getRequestURL()",  req.getRequestURL()));
		out.println(String.format("%20s: %s", "getRemoteAddr()",  req.getRemoteAddr()));
		out.println(String.format("%20s: %s", "getServerName()",  req.getServerName()));
		out.println(String.format("%20s: %s", "getServerPort()",  req.getServerPort()));
		out.println(String.format("%20s: %s", "getScheme()",      req.getScheme()));
		out.println(String.format("%20s: %s", "isSecure()",       req.isSecure()));
		out.println(String.format("%20s: %s", "getQueryString()", req.getQueryString()));
		out.println(String.format("%20s  %s", "", "------------ HEADERS ------------"));
		req.getHeaderNames().asIterator().forEachRemaining(k -> req.getHeaders(k).asIterator()
				.forEachRemaining(v -> out.println(String.format("%20s: %s", k, v))));
	}
}
