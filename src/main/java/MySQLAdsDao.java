import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{

    List<Ad> adsList = new ArrayList<>();

    private Connection connection;

    public MySQLAdsDao() throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
        );
    }

    @Override
    public List<Ad> all() {


        return adsList;
    }

    @Override
    public Long insert(Ad ad) {
        insert(new Ad(ad.getUserId(), ad.getTitle(), ad.getDescription()));
    }

}
