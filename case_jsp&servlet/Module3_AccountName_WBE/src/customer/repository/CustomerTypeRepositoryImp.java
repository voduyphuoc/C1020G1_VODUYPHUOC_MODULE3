package customer.repository;

import customer.model.CustomerType;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepositoryImp implements CustomerTypeRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/web";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
    private static final String SELECT_ALL_CUSTOMER_TYPE ="select * from customer_type";
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
    public List<CustomerType> getAllCustomerType() throws SQLException {
        List<CustomerType> customerTypeList = new ArrayList<>();
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER_TYPE);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            int id = resultSet.getInt("customer_type_id");
            String name = resultSet.getString("customer_type_name");
            customerTypeList.add(new CustomerType(id,name));
        }
        return customerTypeList;
    }
}
