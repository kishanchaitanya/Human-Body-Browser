package com.human3d.dbutils;

import com.human3d.pojo.Doctor;
import com.human3d.pojo.Patient;
import com.human3d.pojo.Position;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by rane on 12/10/14.
 */
public class DBOperations {

    public Map<String,String> getPatientNames(int doc_id)
    {
        Connection con=null;
        PreparedStatement ps=null;
        String query="";
        ResultSet rs=null;
        Map<String,String> pMap=new HashMap<String,String>();
        try{
            query="SELECT * FROM patient where doctor_id=(?)";
            con= DBConnector.getConnection();
            ps=con.prepareStatement(query);
            ps.setInt(1,doc_id);
            rs=ps.executeQuery();
            while(rs.next())
            {
                System.out.print(rs.getString("name"));
                pMap.put(rs.getString("name"),rs.getString("id"));
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        finally {
            if(con!=null)
            {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(ps!=null)
            {
                try {
                    ps.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(rs!=null)
            {
                try {
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return pMap;

    }


    public Doctor createUser(Doctor info)
    {
        {

            Connection con=null;
            PreparedStatement ps=null;
            String query="";
            ResultSet rs=null;


            try{
                query="INSERT INTO doctor(username,password,name) values(?,?,?)";
                con= DBConnector.getConnection();
                ps=con.prepareStatement(query);
                ps.setString(1, info.getEmailAddress());
                ps.setString(2, info.getPassword());
                ps.setString(3, info.getDocName());

                ps.executeUpdate();


            }
            catch (Exception ex)
            {
                ex.printStackTrace();
            }
            finally {
                if(con!=null)
                {
                    try {
                        con.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if(ps!=null)
                {
                    try {
                        ps.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if(rs!=null)
                {
                    try {
                        rs.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            return login(info);

        }
    }

    public void createPatient(String name,String id)
    {
        {

            Connection con=null;
            PreparedStatement ps=null;
            String query="";
            ResultSet rs=null;


            try{
                query="INSERT INTO patient(name,doctor_id) values(?,?)";
                con= DBConnector.getConnection();
                ps=con.prepareStatement(query);
                ps.setString(1, name);
                ps.setString(2,id);


                ps.executeUpdate();


            }
            catch (Exception ex)
            {
                ex.printStackTrace();
            }
            finally {
                if(con!=null)
                {
                    try {
                        con.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if(ps!=null)
                {
                    try {
                        ps.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if(rs!=null)
                {
                    try {
                        rs.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }


        }
    }

    public Doctor login(Doctor info)
    {
        Connection con=null;
        PreparedStatement ps=null;
        String query="";
        ResultSet rs=null;

        try{
            query="SELECT * FROM doctor where username=(?) and password=(?)";
            con= DBConnector.getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1, info.getEmailAddress());
            ps.setString(2,info.getPassword());
            rs=ps.executeQuery();
            while(rs.next())
            {
               info.setDocId(rs.getString("id"));
                info.setDocName(rs.getString("name"));
            }
        }
        catch (Exception ex)
        {

            ex.printStackTrace();
            ex.printStackTrace(new PrintWriter(System.out));

        }
        finally {
            if(con!=null)
            {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(ps!=null)
            {
                try {
                    ps.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(rs!=null)
            {
                try {
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        return info;
    }

    public Patient getInfo(Patient info)
    {
        Connection con=null;
        PreparedStatement ps=null;
        String query="";
        ResultSet rs=null;
        List<Position> positions=new ArrayList<Position>();

        try{
            query="SELECT * FROM patient_mapping where patient_id=(?) ";
            con= DBConnector.getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1, info.getpId());
            Position pos;
            rs=ps.executeQuery();
            while(rs.next())
            {
                pos=new Position();
                pos.setX(rs.getString("x"));
                pos.setY(rs.getString("y"));
                pos.setZ(rs.getString("z"));
                pos.setData(rs.getString("data"));
                pos.setView(rs.getString("view"));
                positions.add(pos);


            }
            info.setPosList(positions);
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        finally {
            if(con!=null)
            {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(ps!=null)
            {
                try {
                    ps.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(rs!=null)
            {
                try {
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        return info;
    }

    public void saveData(Position pos,String id)
    {
        System.out.print("adsdadsdsaHarshad Rane");
        Connection con=null;
        PreparedStatement ps=null;
        String query="";
        ResultSet rs=null;


        try{
            query="INSERT INTO patient_mapping(patient_id,x,y,z,data,view) values(?,?,?,?,?,?)";
            con= DBConnector.getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, pos.getX());
            ps.setString(3, pos.getY());
            ps.setString(4, pos.getZ());
            ps.setString(5, pos.getData());
            ps.setString(6, pos.getView());
          ps.executeUpdate();


        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        finally {
            if(con!=null)
            {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(ps!=null)
            {
                try {
                    ps.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(rs!=null)
            {
                try {
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }


    }
}
