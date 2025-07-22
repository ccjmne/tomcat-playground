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
		resp.setContentType("text/plain");
        final PrintWriter out = resp.getWriter();
		out.println(String.format("%20s: %s", "getRequestURL", req.getRequestURL()));
		out.println(String.format("%20s: %s", "getQueryString", req.getQueryString()));
		out.println(String.format("%20s: %s", "getServerName", req.getServerName()));
		out.println(String.format("%20s: %s", "getServerPort", req.getServerPort()));
		out.println(String.format("%20s: %s", "getScheme", req.getScheme()));
		out.println(String.format("%20s: %s", "isSecure", req.isSecure()));
		out.println(String.format("%20s: %s", "getRemoteAddr", req.getRemoteAddr()));
		req.getHeaderNames().asIterator().forEachRemaining(k -> req.getHeaders(k).asIterator()
				.forEachRemaining(v -> out.println(String.format("%20s: %s", k, v))));
	}
}
