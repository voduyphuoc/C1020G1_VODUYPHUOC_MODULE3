package service;

import model.HocSinh;
import repository.HocSinhRepository;
import repository.HocSinhRepositoryImp;

import java.sql.SQLException;
import java.util.List;

public class HocSinhServiceImp implements HocSinhService {
    HocSinhRepository hocSinhRepository = new HocSinhRepositoryImp();
    @Override
    public List<HocSinh> getAllHocSinh() {
        return hocSinhRepository.getAllHocSinh();
    }

    @Override
    public void insertHocSinh(HocSinh hocSinh) throws SQLException {
        hocSinhRepository.insertHocSinh(hocSinh);
    }

    @Override
    public boolean deleteHocSinh(String id) throws SQLException {
        return hocSinhRepository.deleteHocSinh(id);
    }

    @Override
    public boolean updateHocSinh(HocSinh hocSinh) throws SQLException {
        return hocSinhRepository.updateHocSinh(hocSinh);
    }

    @Override
    public HocSinh selectHocSinh(String id) {
        return hocSinhRepository.selectHocSinh(id);
    }

    @Override
    public List<HocSinh> searchByName(String name) {
        return hocSinhRepository.searchByName(name);
    }
}
