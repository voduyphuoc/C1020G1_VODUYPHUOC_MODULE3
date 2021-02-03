package repository;

import model.HocSinh;
import model.HocSinhType;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HocSinhTypeRepositoryImp implements HocSinhTypeRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/thi";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
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
    private static final String SELECT_ALL_HOCSINH_TYPE = "select * from hocsinh_type";
    @Override
    public List<HocSinhType> getAllHocSinhType() {
        List<HocSinhType> hocSinhTypeList = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_HOCSINH_TYPE)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id_type");
                String name = resultSet.getString("name_type");
                hocSinhTypeList.add(new HocSinhType(String.valueOf(id),name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                getConnection().close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return hocSinhTypeList;
    }
}
