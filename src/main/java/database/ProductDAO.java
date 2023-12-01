
import model.Product;
import database.JDBCUtil; // Assuming you have a database connection class

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    private final Connection connection;

    public ProductDAO() {
        connection = JDBCUtil.getConnection(); // Get a database connection
    }

    // Create a new book record
    public void addProduct(Product product) {
        String sql = "INSERT INTO [Products] (name, price, quantityInStock, imageURL) VALUES (?, ?, ?, ?)";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, product.getName());
            statement.setDouble(2, product.getPrice());
            statement.setInt(3, product.getQuantityInStock());
            statement.setString(4, product.getImageURL());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
    }

    // Retrieve a list of all books from the database
    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();
		String sql = "SELECT * FROM Products";
        try ( PreparedStatement statement = connection.prepareStatement(sql);  ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                float price = resultSet.getFloat("price");
                int quantityInStock = resultSet.getInt("quantityInStock");
                String imageURL = resultSet.getString("imageURL");

                Product product = new Product(id, name, price, quantityInStock, imageURL);

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
        return products;
    }

    public Product getProductById(int id) {
        Product product = null;
        String sql = "SELECT * FROM [Products] WHERE id = ?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id); // Set the BookId parameter
            try ( ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String name = resultSet.getString("name");
                    float price = resultSet.getFloat("price");
                    int quantityInStock = resultSet.getInt("quantityInStock");
                    String imageURL = resultSet.getString("imageURL");

                    product = new Product(id, name, price, quantityInStock, imageURL);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle the exception appropriately
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
        return product;
    }

    // Update an existing book record
    public void updateBook(Product product) {
        String sql = "UPDATE [Products] SET name=?, price=?, quantityInStock=?, imageURL=? WHERE id=?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, product.getName());
            statement.setDouble(4, product.getPrice());
            statement.setInt(5, product.getQuantityInStock());
            statement.setString(6, product.getImageURL());
            statement.setInt(7, product.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
    }

    // Delete a book record by ID
    public void deleteBook(int id) {
        String sql = "DELETE FROM [Products] WHERE id=?";
        try ( PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }
    }
}
