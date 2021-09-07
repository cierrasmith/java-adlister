package dao;

public class DaoFactory {
    private static ProductsInterface productsDao;

    public static ProductsInterface getProductsDao() {

        // Check to see if a products Data access object already exists
        if (productsDao == null) {
            // If the productsDao is null; it's because it hasn't been initialized, so we need to initialize it
            productsDao = new ListProductsDao();
        }
        return productsDao;
    }
}
