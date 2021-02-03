package repository;

import model.HocSinh;

import java.sql.SQLException;
import java.util.List;

public interface HocSinhRepository {
    List<HocSinh> getAllHocSinh();
    void insertHocSinh(HocSinh hocSinh) throws SQLException;
    boolean deleteHocSinh(String id) throws SQLException;
    boolean updateHocSinh(HocSinh hocSinh) throws SQLException;
    HocSinh selectHocSinh(String id);
    List<HocSinh> searchByName(String name);
}
