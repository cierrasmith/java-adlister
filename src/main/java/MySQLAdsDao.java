import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class MySQLAdsDao implements Ads{

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
        return all();
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
