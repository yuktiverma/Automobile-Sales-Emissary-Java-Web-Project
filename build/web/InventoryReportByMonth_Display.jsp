

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@taglib uri="http://displaytag.sf.net" prefix="d"%>

        <d:table name="sessionScope.InventoryReportByMonth.al" export="true" style="border:1px solid #ccc;background-color:#666666;">
                  <d:setProperty name="export.excel" value="true"></d:setProperty>
            <d:setProperty name="export.pdf" value="true"></d:setProperty>
            <d:setProperty name="export.xml" value="true"></d:setProperty>
            <d:setProperty name="export.document" value="true"></d:setProperty>
            <d:column sortable="true" style="background-color:#ffffff;" property="branch_id" title="Branch_ID"></d:column>


            <d:column style="background-color:#ffffff;" property="inv_id" title="Inventory_Id"></d:column>
  <d:column style="background-color:#ffffff;" property="branch_id" title="Branch_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="baseModel_id" title="BaseModel_ID"></d:column>
            <d:column style="background-color:#ffffff;" property="model_id" title="Model_ID"></d:column>
            <d:column style="background-color:#ffffff;" property="color_id" title="Color_ID"></d:column>
            <d:column style="background-color:#ffffff;" property="total_quantity" title="Toatal_Quantity"></d:column>
              <d:column style="background-color:#ffffff;" property="quantity_in_hand" title="Quantity_In_Hand"></d:column>
            <d:column style="background-color:#ffffff;" property="model_sold" title="Model_sold"></d:column>
            <d:column style="background-color:#ffffff;" property="date" title="Date"></d:column>

        </d:table>
    </body>
</html>
