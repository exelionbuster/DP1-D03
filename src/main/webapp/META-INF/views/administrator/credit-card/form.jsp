<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">

	<acme:form-textbox code="administrator.credit-card.form.label.holder-name" path="holderName"/>
	<acme:form-textbox code="administrator.credit-card.form.label.number" path="number"/>
	<acme:form-textbox code="administrator.credit-card.form.label.brand" path="brand"/>
	<acme:form-moment code="administrator.credit-card.form.label.expirationDate" path="expirationDate"/>
	<acme:form-textbox code="administrator.credit-card.form.label.target" path="cvv"/>
	
	<acme:form-return code="administrator.credit-card.form.button.return" />
		
</acme:form>
