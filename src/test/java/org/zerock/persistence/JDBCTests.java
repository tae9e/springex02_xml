package org.zerock.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;
@Log4j
public class JDBCTests {
	Connection conn = null;

	 static{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			System.out.println("해당 드라이버 위치에 버전에 맞는 드라이버가 없습니다.");
		}
	}
	@Test
	public void testConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		try {
			conn=DriverManager.getConnection(url,"spring","spring");
			log.info(conn);
		} catch (SQLException e) {
			fail("My(해당 DB가 없습니다.): " + e.getMessage());
			e.printStackTrace();
		}
	}
}
