package customer.controller;

import customer.model.Customer;
import customer.model.CustomerType;
import customer.service.CustomerService;
import customer.service.CustomerServiceImp;
import customer.service.CustomerTypeService;
import customer.service.CustomerTypeServiceImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                createCustomer(request,response);
                break;
            case "search":
                break;
            case "edit":
//                    editCustomer(request,response);
                break;
            case "delete":
                break;
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
//        try {
        switch (action) {
            case "create":
                break;
            case "search":
//                    findCustomerByname(request,response);
                break;
            case "edit":
//                    showEditCustomer(request,response);
                break;
            case "delete":
//                    deleteCustomer(request,response);
                break;
            default:
                listCustomer(request, response);
                break;
        }

//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
    }

}
