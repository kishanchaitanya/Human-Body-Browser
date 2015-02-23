package com.human3d.dbutils;
import com.google.appengine.api.utils.SystemProperty;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.jdbc.Driver;
/**
 * Created by rane on 12/9/14.
 */

public class DBConnector {


    public static Connection getConnection() throws Exception {
        Connection conn = null;
        String url=null;
        Exception ref=null;
        try {
            if (SystemProperty.environment.value() ==
                    SystemProperty.Environment.Value.Production) {
                // Load the class that provides the new "jdbc:google:mysql://" prefix.
                Class.forName("com.mysql.jdbc.GoogleDriver");
                url = "jdbc:google:mysql://flowing-elf-781:human3d/human3d?user=root";
                conn= DriverManager.getConnection(url);


            } else {
                // Local MySQL instance to use during development.
                System.out.print("hello");
                Class.forName("com.mysql.jdbc.Driver");
                url = "jdbc:mysql://173.194.111.194:3306/human3d";
                conn= DriverManager.getConnection(url,"root","123");

                // Alternatively, connect to a Google Cloud SQL instance using:
                // jdbc:mysql://ip-address-of-google-cloud-sql-instance:3306/guestbook?user=root
            }

        } catch (Exception e) {


            throw e;

        }


        return conn;
    }

    public  static  void  main(String args[])
    {

    }
}

