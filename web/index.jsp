<%-- 
    Document   : index
    Created on : 07/03/2012, 20:21:17
    Author     : Juliano Nicomedes
--%>

<%@page contentType="text/plain" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Scripting JSP</title>
    </head>
    <body>
      
        <%-- Função para calcular o fatorial de um número --%>
        <%!
           int fat = 1;
           private long fatorial(long n){
               if (n <= 1) return 1;
                             else
                                 return n * fatorial(n - 1);            
       
               }
              
             
        %>
        
        <%
      
        String param = request.getParameter("n");
        long num  = Long.parseLong(param);
        long i;
        for (i = 0; i <= num; i++){
            out.print(i + "," + fatorial(i)); 
            
        }
       
              %>
        
     
    </body>
</html>
