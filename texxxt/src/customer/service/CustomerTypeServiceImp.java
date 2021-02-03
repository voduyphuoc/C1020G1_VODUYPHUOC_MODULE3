package customer.service;

import customer.model.CustomerType;
import customer.repository.CustomerTypeRepository;
import customer.repository.CustomerTypeRepositoryImp;

import java.util.List;

public class CustomerTypeServiceImp implements  CustomerTypeService {
    CustomerTypeRepository customerTypeRepository = new CustomerTypeRepositoryImp();
    @Override
    public List<CustomerType> getAllCustomerType() {
        return customerTypeRepository.getAllCustomerType();
    }
}
