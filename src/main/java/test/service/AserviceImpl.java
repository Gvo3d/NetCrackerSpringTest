package test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import test.dao.ObjARepository;
import test.model.ObjA;

/**
 * Created by Gvozd on 24.07.2017.
 */
@Service
public class AserviceImpl implements Aservice {

    @Autowired
    ObjARepository objARepository;

    @Override
    @Transactional
    public Iterable<ObjA> getAll() {
        return objARepository.getAll();
    }
}
