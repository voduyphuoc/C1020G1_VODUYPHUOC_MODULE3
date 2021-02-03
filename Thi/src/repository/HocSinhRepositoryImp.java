package repository;

import model.HocSinh;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HocSinhRepositoryImp implements HocSinhRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/thi?useSSL=false";
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

    private static final String INSERT_HOCSINH_SQL = "INSERT INTO hocsinh(id,id_type,`name`,address,email,phone)" +
            "VALUES(?,?,?,?,?,?)";
    private static final String SELECT_ALL_HOCSINH = "select * from hocsinh";
    private static final String DELETE_HOCSINH = "delete from hocsinh where id = ?";
    private static final String SELECT_HOCSINH = "select * from hocsinh where id = ?";
    private static final String UPDATE_HOCSINH = "update hocsinh set id_type =?, `name` = ?, address = ?, email = ?, phone = ? where id = ?";
    private static final String SEARCH = "select * from hocsinh where name like ?";

    @Override
    public List<HocSinh> getAllHocSinh() {
        List<HocSinh> hocSinhList = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL_HOCSINH)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                int id_type = resultSet.getInt("id_type");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                hocSinhList.add(new HocSinh(id, id_type, name, address, email, phone));
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
        return hocSinhList;
    }

    @Override
    public void insertHocSinh(HocSinh hocSinh) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_HOCSINH_SQL)) {
            statement.setString(1, hocSinh.getId());
            statement.setInt(2, hocSinh.getId_type());
            statement.setString(3, hocSinh.getName());
            statement.setString(4, hocSinh.getAddress());
            statement.setString(5, hocSinh.getEmail());
            statement.setString(6, hocSinh.getPhone());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean deleteHocSinh(String id) throws SQLException {
        boolean check;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_HOCSINH)) {
            statement.setInt(1, Integer.parseInt(id));
            check = statement.executeUpdate() > 0;
        } finally {
            getConnection().close();
        }
        return check;
    }

    @Override
    public boolean updateHocSinh(HocSinh hocSinh) throws SQLException {
        boolean check;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_HOCSINH)) {
            statement.setString(6, hocSinh.getId());
            statement.setInt(1, hocSinh.getId_type());
            statement.setString(2, hocSinh.getName());
            statement.setString(3, hocSinh.getAddress());
            statement.setString(4, hocSinh.getEmail());
            statement.setString(5, hocSinh.getPhone());
            check = statement.executeUpdate() > 0;
        }
        return check;
    }

    @Override
    public HocSinh selectHocSinh(String id) {
        HocSinh hocSinh = null;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_HOCSINH)) {
            statement.setString(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int idType = resultSet.getInt("id_type");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                hocSinh = new HocSinh(id, idType, name, address, email, phone);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hocSinh;
    }

    @Override
    public List<HocSinh> searchByName(String name) {
        List<HocSinh> hocSinhList = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SEARCH)) {
            statement.setString(1, "%" + name + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String id = "KH-" + resultSet.getString("id");
                int idType = resultSet.getInt("id_type");
                String name1 = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                hocSinhList.add(new HocSinh(id, idType, name1, address, email, phone));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hocSinhList;
    }
}
