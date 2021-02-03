package customer.repository;

import customer.model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImp implements CustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/web";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO " +
            "customer(customer_id,customer_type_id, customer_name, customer_birthday,customer_gender," +
            "customer_id_card,customer_phone,customer_email,customer_address) " +
            "VALUES(?,?,?,?,?,?,?,?,?)";
    private static final String SELECT_ALL_CUSTOMER = "select * from customer";
    private static final String SELECT_CUSTOMER_BY_NAME = "select * from customer where customer_name like ?";
    private static final String DELETE_CUSTOMER = "delete from customer where customer_id = ?";
    private static final String UPDATE_CUSTOMER = "update customer set customer_type_id = ?,customer_name= ?, " +
            "customer_birthday = ?," + "customer_gender = ?,customer_id_card = ?,customer_phone= ?, customer_email = ?, " +
            "customer_address = ? where customer_id = ?";
    private static final String SELECT_CUSTOMER = "select * from customer where customer_id= ?";
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Customer> getAllCustomers() throws SQLException {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String id = resultSet.getString("customer_id");
            String name = resultSet.getString("customer_name");
            String birthday = resultSet.getString("customer_birthday");
            String gender = resultSet.getString("customer_gender");
            String cmnd = resultSet.getString("customer_cmnd");
            String phone = resultSet.getString("customer_phone");
            String email = resultSet.getString("customer_email");
            customerList.add(new Customer(id,name,birthday,gender,cmnd,phone,email));
        }
        return customerList;
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {

    }

    @Override
    public boolean deleteCustomer(String id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return false;
    }

    @Override
    public Customer selectCustomer(String id) {
        return null;
    }

    @Override
    public List<Customer> searchByName(String name) {
        return null;
    }
}
