package test.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import test.model.ObjA;

import java.util.List;

/**
 * Created by Gvozd on 24.07.2017.
 */
@Repository
public class ObjARepositoryImpl implements ObjARepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<ObjA> getAll() {
        return sessionFactory.getCurrentSession().createQuery("from ObjA").list();
    }
}
