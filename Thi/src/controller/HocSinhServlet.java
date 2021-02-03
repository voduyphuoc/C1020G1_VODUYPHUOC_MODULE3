package controller;

import model.HocSinh;
import model.HocSinhType;
import service.HocSinhService;
import service.HocSinhServiceImp;
import service.HocSinhTypeService;
import service.HocSinhTypeServiceImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "HocSinhServlet", urlPatterns = {"", "/hocsinh"})
public class HocSinhServlet extends HttpServlet {
    HocSinhService hocSinhService = new HocSinhServiceImp();
    HocSinhTypeService hocSinhTypeService = new HocSinhTypeServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                try {
                    createHocSinh(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "search":
                break;
            case "edit":
                try {
                    editHocSinh(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "delete":
                break;
        }
    }

    private void editHocSinh(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String id = request.getParameter("id");
        int id_type = Integer.parseInt(request.getParameter("id_type"));
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        hocSinhService.updateHocSinh(new HocSinh(id, id_type, name, address, email, phone));
        request.setAttribute("message1", "sua thanh cong");
//        listHocSinh(request,response);
        response.sendRedirect("/hocsinh");
    }

    private void createHocSinh(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String id = request.getParameter("id");
        int id_type = Integer.parseInt(request.getParameter("id_type"));
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        hocSinhService.insertHocSinh(new HocSinh(id, id_type, name, address, email, phone));
//        List<HocSinhType> customerTypeList = hocSinhTypeService.getAllHocSinhType();
//        request.setAttribute("hocSinhTypeList",customerTypeList);
//        request.getRequestDispatcher("hocsinh/create.jsp").forward(request,response);
        request.setAttribute("message", "thêm mới thành công");
        listHocSinh(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                showCreateHocSinh(request, response);
                break;
            case "search":
                findHocSinhByname(request, response);
                break;
            case "edit":
                showEditHocSinh(request, response);
                break;
            case "delete":
                try {
                    deleteHocSinhForm(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                listHocSinh(request, response);
                break;
        }

    }

    private void deleteHocSinhForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String id = request.getParameter("id");
        hocSinhService.deleteHocSinh(id);
        request.setAttribute("messageConfig","đã xóa thành công");
//        response.sendRedirect("/customers");
        listHocSinh(request,response);
    }

    private void findHocSinhByname(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nameHS");
        List<HocSinh> hocSinhList = hocSinhService.searchByName(name);
        request.setAttribute("hocSinhList" ,hocSinhList);
//        request.setAttribute("name" ,name);
        RequestDispatcher dispatcher = request.getRequestDispatcher("hocsinh/list.jsp");
        dispatcher.forward(request,response);
    }

    private void showEditHocSinh(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        HocSinh hocSinh = hocSinhService.selectHocSinh(id);
        List<HocSinhType> hocSinhTypeList = hocSinhTypeService.getAllHocSinhType();
        request.setAttribute("hocSinh", hocSinh);
        request.setAttribute("hocSinhTypeList", hocSinhTypeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("hocsinh/edit.jsp");
        dispatcher.forward(request, response);
    }


    private void showCreateHocSinh(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<HocSinhType> customerTypeList = hocSinhTypeService.getAllHocSinhType();
        request.setAttribute("hocSinhTypeList", customerTypeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("hocsinh/create.jsp");
        dispatcher.forward(request, response);

    }

    private void listHocSinh(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<HocSinh> hocSinhList = hocSinhService.getAllHocSinh();
        request.setAttribute("hocSinhList", hocSinhList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/hocsinh/list.jsp");
        dispatcher.forward(request, response);
    }
}
