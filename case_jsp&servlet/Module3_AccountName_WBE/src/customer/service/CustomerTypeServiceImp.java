package customer.service;

import customer.model.CustomerType;
import customer.repository.CustomerTypeRepository;
import customer.repository.CustomerTypeRepositoryImp;

import java.sql.SQLException;
import java.util.List;

public class CustomerTypeServiceImp implements CustomerTypeService {
    CustomerTypeRepository customerTypeRepository = new CustomerTypeRepositoryImp();
    @Override
    public List<CustomerType> getAllCustomerType() throws SQLException {
        return customerTypeRepository.getAllCustomerType();
    }
}
