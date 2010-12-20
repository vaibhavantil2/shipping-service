
<%@ page import="org.pih.warehouse.product.Product" %>
<%@ page import="org.pih.warehouse.product.ProductClass" %>
<%@ page import="org.pih.warehouse.product.ProductType" %>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="custom" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
		<!-- Specify content to overload like global navigation links, page titles, etc. -->
		<content tag="pageTitle"><g:message code="default.create.label" args="[entityName]" /></content>
    </head>    
    <body>
    	
    
        <div class="body">
		    <div class="nav">
		    	<g:render template="nav"/>		    
		    </div>
            <g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${productInstance}">
	            <div class="errors">
	                <g:renderErrors bean="${productInstance}" as="list" />
	            </div>
            </g:hasErrors>            
            <div class="dialog">
	            <g:form action="create" method="post">
                
    	        	<fieldset>
	                    <table>
	                        <tbody>                        
	                            <tr class="prop">
									<td class="name">
	                                    <label for="name"><g:message code="productType.productClass.label" default="Class" /></label>
									</td>
									<td class="value">
										${productTypeInstance?.productClass?.name }												
									</td>
	                            </tr>
	                            <tr class="prop">
									<td class="name">
	                                    <label for="name"><g:message code="product.name.label" default="Product" /></label>
									</td>
									<td class="value">
										<g:textField name="name" value="${productTypeInstance?.name }"/>
									</td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </fieldset>              
	            </g:form>
           	</div>
        </div>
    </body>
</html>
