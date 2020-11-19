package MYSQL;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MainController {
    private Connection connection = null;

    public void sqlConnect() {
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost/world", "root", "mvd66sxj");
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
    }

    public void getCities() {
        cityQuery("SELECT Name FROM city");
    }

    public void getCitiesOver5M() {
        cityQuery("SELECT Name FROM city WHERE Population > 5000000");
    }

    private void cityQuery(String query) {
        try (Statement stmt = connection.createStatement()){
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                System.out.println(rs.getString("Name"));
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
    }

    public List<City> getListCity() {
        List<City> cities = new ArrayList<>();

        try (Statement stmt = connection.createStatement()){
            ResultSet rs = stmt.executeQuery("SELECT * FROM city");
            while (rs.next()) {
                String cityName = rs.getString("Name");
                String countryCode = rs.getString("CountryCode");
                String District = rs.getString("District");
                int population = rs.getInt("Population");
                City tmpCity = new City(cityName, countryCode, District, population);
                cities.add(tmpCity);
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }

        return cities;
    }
}
