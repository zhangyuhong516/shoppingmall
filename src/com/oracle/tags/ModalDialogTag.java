package com.oracle.tags;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ModalDialogTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException 
	{
		StringBuilder sb=new StringBuilder();
		//在页面上输出模态框的html代码
      JspContext jc= this.getJspContext();
      String msg=(String)jc.getAttribute("msg", PageContext.REQUEST_SCOPE);
      
	  if(null!=msg)
	  {
		  sb.append("<script type='text/javascript'>");
		  sb.append("$(function(){");
		  sb.append("$('#myModal').modal({");
		  sb.append("keyboard: false,");
		  sb.append("show: true");
		  sb.append("});");
		  sb.append("});");
		  sb.append(" </script>");
		  sb.append("<div class='modal fade' id='myModal'>");
		  sb.append("<div class='modal-dialog'>");
		  sb.append("<div class='modal-content'>");
		  sb.append("<div class='modal-header'>");
		  sb.append("<button type='button' class='close' data-dismiss='modal' ><span>&times;</span></button>");
		  sb.append(" <h4 class='modal-title'>提示</h4>");
		  sb.append(" </div>");
		  sb.append("<div class='modal-body'>");
		  sb.append("<p>"+msg+"</p>");
		  sb.append(" </div>");
		  sb.append("<div class='modal-footer'>");
		  sb.append("<button type='button' class='btn btn-danger' data-dismiss='modal'>Close</button>");
		  sb.append("</div>");
		  sb.append("</div>");
		  sb.append("</div>");
		  sb.append("</div>");
	  }
		
	  //把sb中的代码输出到页面上
	   this.getJspContext().getOut().write(sb.toString());	
		
	}
}
