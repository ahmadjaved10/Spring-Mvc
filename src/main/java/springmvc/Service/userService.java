package springmvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.Dao.userDao;
import springmvc.user.User;

@Service
public class userService {

    @Autowired
    private userDao userDao;

    public Long createUser(User user) {
        return this.userDao.saveUser(user);
    }
    
    public void updateUser(User user) {
        this.userDao.updateUser(user);
    }

    public void addBilling(User user, String billingAddress) {
        // Retrieve the user from the database
        User existingUser = this.userDao.getUserById(user.getId());
        
        // Update the billing address
        existingUser.setBillingAddress(billingAddress);
        
        // Save the updated user
        this.userDao.updateUser(existingUser);
    }
}
