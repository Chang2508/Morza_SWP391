<%-- 
    Document   : Admin
    Created on : Jan 31, 2023, 10:36:21 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <title>ADMIN DASHBOARD</title>
    </head>
    <body>
        <h1>Hello Admin!</h1>
        <div>
            <form action="SearchAccountController" method="POST">
                Search Keyword: <input type="text" name="txtSearchValue" value="" /> 
                <input type="submit" value="Find Account" name="btAction" />


            </form>
            <form action="createNewAccount.jsp" method="POST">
                <input type="submit" value="Create page" name="btAction" />
            </form>
        </div>
        <br/>
        <c:if test="${not empty requestScope.ACC_RESULT}">
            <table border="1">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Phone Number</th>
                        <th>Customer Name</th>
                        <th>Address</th>
                        <th>Email</th>                      
                    </tr>
                </thead>


                <%--<%
                    for (ProductDTO dto : result) {
                %>--%>

                <c:forEach var="result" items="${requestScope.ACC_RESULT}" varStatus="counter">
                    <form action="UpdateAccountController">
                        <tr>
                            <td>
                                ${counter.count}
                                .</td>
                            <td>
                                ${result.username}
                                <input type="hidden" name="txtUsername" 
                                       value="${result.username}" />
                            </td>
                            <td>                               
                                <input type="text" name="txtPassword" 
                                       value="${result.password}" />

                            </td>
                            <td>

                                <input type="text" name="txtPhoneNum" 
                                       value="${result.phoneNum}" />

                            </td>
                            <td>

                                <input type="text" name="txtCustName" 
                                       value="${result.custName}" />

                            </td>
                            <td>

                                <input type="text" name="txtAddress" 
                                       value="${result.address}" />

                            </td>
                            <td>

                                <input type="text" name="txtEmail" 
                                       value="${result.email}" />

                            </td>

                            <td>
                                <input type="submit" value="Update" name="btAction" />
                            </td>
                        </tr>
                    </form>

                    <%--<%
                        }//end traverse each row in result
                    %>--%>

                </c:forEach>
            </tbody>
        </table>

    </c:if>
    <c:if test="${empty requestScope.ACC_RESULT}">
        <h2>
            Can't find the match account!!!
        </h2>

        <%--<%
        }//search Value is not existed
        %>--%>

    </c:if>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
