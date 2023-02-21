
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calendar</title>

    <style>


    </style>

</head>

<body>

<script>
    var counter = 1;

</script>

<table width="90%" border="1" cellspacing="1" cellpadding="1">
    <thead>
    <tr>
        <%--        If we could get the counter to work to select the month I think this would be easiest--%>
        <td colspan="7" align="center" > ${Months[counter].name}  2023 </td>
        <%--    </tr>--%>
        <%--    <tr>--%>
        <%--        <th>Monday</th>--%>
        <%--        <th>Tuesday</th>--%>
        <%--        <th>Wednesday</th>--%>
        <%--        <th>Thursday</th>--%>
        <%--        <th>Friday</th>--%>
        <%--        <th>Saturday</th>--%>
        <%--        <th>Sunday</th>--%>
        <%--    </tr>--%>
    </thead>
    <tbody>
    <tr>
        <td>1 ${Months[1].events[0]}</td>
        <td>2</td>
        <td>3</td>
        <td>4</td>
        <td>5</td>
        <td>6</td>
        <td>7</td>
    </tr>
    <tr>
        <td>8</td>
        <td>9</td>
        <td>10</td>
        <td>11</td>
        <td>12</td>
        <td>13</td>
        <td>14</td>
    </tr>
    <tr>
        <td>15</td>
        <td>16</td>
        <td>17</td>
        <td>18</td>
        <td>19</td>
        <td>20</td>
        <td>21</td>
    </tr>
    <tr>
        <td>22</td>
        <td>23</td>
        <td>24</td>
        <td>25</td>
        <td>26</td>
        <td>27</td>
        <td>28</td> <%-- feb --%>
    </tr>
    <tr>
        <td>29</td>
        <td>30</td> <%-- April,June,Sept,Nov --%>
        <td>31</td> <%-- Jan,March,May,July,August,October,December --%>
        <td id="counter">  </td>
        <td id = "monthName" >  </td>
        <td> </td>
        <td ></td>
    </tr>

    </tbody>
    <tfoot>

    </tfoot>
</table>

<%--<c:forEach items="${Months}" var="Month">--%>
<%--    <table>--%>

<%--        <thead>--%>
<%--        Month name: ${Month.name}--%>
<%--        </thead>--%>
<%--    </table>--%>
<%--<h3>Month name: ${Month.name}</h3>--%>



<%--<script>--%>
<%--   let monthName = "${Months[0].name}";--%>
<%--   document.getElementById("Month").innerHTML = monthName;--%>
<%--</script>--%>



</body>

</html>