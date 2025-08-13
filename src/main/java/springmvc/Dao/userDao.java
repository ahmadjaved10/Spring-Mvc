package springmvc.Dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import springmvc.user.User;

@Repository
public class userDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public Long saveUser(User user) {
        Long id = (Long) this.hibernateTemplate.save(user);
        return id;
    }
    
    @Transactional
    public void updateUser(User user) {
        this.hibernateTemplate.update(user);
    }

    @Transactional
    public User getUserById(Long id) {
        return this.hibernateTemplate.get(User.class, id);
    }
}
