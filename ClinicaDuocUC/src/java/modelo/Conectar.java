/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author vina
 */
public class Conectar {
    public DriverManagerDataSource conectar()
    {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost/vet");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        
        return dataSource;
    }

    public PreparedStatement prepareStatement(String sql) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
