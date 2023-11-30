package database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import com.microsoft.sqlserver.jdbc.SQLServerDriver;
public class JDBCUtil {
	public static Connection getConnection() {

		Connection c = null;
		try {

			/// đăng ký Sql driver với driver manager

		//	DriverManager.registerDriver(new SQLServerDriver()); lỗi không sài cách này được 
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

			
			
			// Các thông số
			String url = "jdbc:sqlserver://ADMIN-PC\\QUOCHUNG:1433;databaseName=Website"+ 
						";encrypt=true;trustServerCertificate=true";
			
			String username = "sa";
			
			String password = "123456";

			
				
			// Tạo kết nối
			c = DriverManager.getConnection(url, username, password);
			
			} catch (ClassNotFoundException e) {
				
	            // Xử lý ngoại lệ ClassNotFoundException ở đây
	            e.printStackTrace();
	            
	        } catch (SQLException e) {
	            // Xử lý ngoại lệ SQLException ở đây
	            e.printStackTrace();
	        }
		
	        return c;
	    }

	public static void closeConnection(Connection c) {
		try {
			if(c!=null) { 
				c.close(); 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void printInfo (Connection c ) { 
		try {
			if(c!=null ) { 
			DatabaseMetaData mtdt= c.getMetaData() ; 
				System.out.println(c.getMetaData().toString());
				System.out.println(mtdt.getDatabaseProductName());
				System.out.println(mtdt.getDatabaseProductVersion());
				System.out.println(mtdt.getDatabaseMajorVersion());
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}