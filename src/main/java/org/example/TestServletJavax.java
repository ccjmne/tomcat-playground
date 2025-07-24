package org.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class TestServletJavax extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		final PrintWriter out = res.getWriter();
		res.setContentType("text/plain");
		out.println(String.format("%20s %s", "", "----------- INCOMING HEADERS -----------"));
		req.getHeaderNames().asIterator().forEachRemaining(k -> req.getHeaders(k).asIterator()
				.forEachRemaining(v -> out.println(String.format("%19s: %s", k, v))));
		out.println(String.format("%20s %s", "", "-------- INTERPRETED PROPERTIES --------"));
		out.println(String.format("%20s %s", "getRequestURL()",  req.getRequestURL()));
		out.println(String.format("%20s %s", "getRemoteAddr()",  req.getRemoteAddr()));
		out.println(String.format("%20s %s", "getServerName()",  req.getServerName()));
		out.println(String.format("%20s %s", "getServerPort()",  req.getServerPort()));
		out.println(String.format("%20s %s", "getScheme()",      req.getScheme()));
		out.println(String.format("%20s %s", "isSecure()",       req.isSecure()));
		out.println(String.format("%20s %s", "getQueryString()", req.getQueryString()));
	}
}
