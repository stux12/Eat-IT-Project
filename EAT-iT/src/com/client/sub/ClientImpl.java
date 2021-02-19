package com.client.sub;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ClientImpl {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception; 
}
