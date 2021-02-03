package service;

import model.HocSinhType;
import repository.HocSinhTypeRepository;
import repository.HocSinhTypeRepositoryImp;

import java.util.List;

public class HocSinhTypeServiceImp implements HocSinhTypeService {
    HocSinhTypeRepository hocSinhTypeRepository = new HocSinhTypeRepositoryImp();
    @Override
    public List<HocSinhType> getAllHocSinhType() {
        return hocSinhTypeRepository.getAllHocSinhType();
    }
}
