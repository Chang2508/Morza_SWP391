/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.CustomerDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import utils.DBHelper;

/**
 *
 * @author DELL
 * 
 */
public class CustomerDAO implements Serializable{
    
    private List<CustomerDTO> itemsList;
    public  List<CustomerDTO> getItemsList() {
        return itemsList;
    }
    
    // check login
    public CustomerDTO checkLogin(String username, String password) 
        throws NamingException, SQLException {
        
         Connection con = null;
        
        PreparedStatement stm = null;
        ResultSet rs = null;
        CustomerDTO result = null;

        try {
           
            con = DBHelper.makeConnection();

            if (con != null) {

              
                String sql = "Select * "
                        + "From Customer "
                        + "Where username = ? And password = ?";

                stm = con.prepareStatement(sql);
              
                stm.setString(1, username);
                stm.setString(2, password);

                
                rs = stm.executeQuery();

               
                if (rs.next()) { 
                    String phoneNum = rs.getString("phoneNum");
                    String address = rs.getString("address");
                    String custName = rs.getString("custName");
                    String email = rs.getString("email");
//                    result = new CustomerDTO(custID, username, password, phoneNum, address, custName, email);
                    result = new CustomerDTO(username,password, phoneNum, address, custName, email);
                }

            } //end if connection is existed
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }
    
   public boolean createAccount (CustomerDTO dto) throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1. Connect DB
            con = DBHelper.makeConnection();

            if (con != null) {

                //2. Create SQL statement String
                String sql = "Insert into Customer("
                        + "username, password, phoneNum, address, custName, email"
                        + ") "
                        + "values(?, ?, ?, ?, ?, ?"
                        + ")";

                //3. Create statement to set SQL
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getUsername());
                stm.setString(2, dto.getPassword());
                stm.setString(3, dto.getPhoneNum());
                stm.setString(4, dto.getAddress());
                stm.setString(5, dto.getCustName());
                stm.setString(6, dto.getEmail());

                //4.Execute Query
                int effectedRow = stm.executeUpdate();
                //5. Process 
                // trả về nhiều dòng dùng while/ một dòng dùng if
                if (effectedRow > 0) {
                    result = true;
                }

            } //end if connection is existed
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }
    public void searchAccount(String searchValue)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Get connection
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create sql string
                String sql = "Select username, password, phoneNum, custName, address, email\n"
                        + "From Customer\n"
                        + "Where username Like ? "
                        + "OR custName Like ? "
                        + "OR email Like ?";
                //3. Create statement
                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + searchValue + "%");
                stm.setString(2, "%" + searchValue + "%");
                stm.setString(3, "%" + searchValue + "%");
                //4. Execute Query
                rs = stm.executeQuery();
                //5. Process result
                while (rs.next()) {
                    //get field/column
                    String username = rs.getString("username");
                    String password = rs.getString("password");
                    String phoneNum = rs.getString("phoneNum");
                    String custName = rs.getString("custName");
                    String address = rs.getString("address");
                    String email = rs.getString("email");
                    //Create DTO instance
                    CustomerDTO dto = new CustomerDTO(username, password, phoneNum, address, custName, email);
                    //add to bookList
                    if (this.itemsList == null) {
                        this.itemsList = new ArrayList<>();
                    }//end bookList is not existed
                    this.itemsList.add(dto);
                }//end bookList is traversed
            }//end con is available
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
    public boolean updateCourse(CustomerDTO dto) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean checkUpdate = true;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            //2. Create SQL String
//            if (con != null) {
                //3. Create statement
                if (con != null) {
                                    String sql = "Update Customer "
                        + "SET password = ?, phoneNum = ?,  custName = ?, address = ?, email = ? \n"
                        + "Where username = ?";
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getPassword());
                stm.setString(2, dto.getPhoneNum());
                stm.setString(3, dto.getCustName());
                stm.setString(4, dto.getAddress());
                stm.setString(5, dto.getEmail());
                stm.setString(6, dto.getUsername());
                checkUpdate = stm.executeUpdate()> 0 ? true : false;
                }
                //4. Execute query
//                int effectedRows = stm.executeUpdate();
                //5. Process result
//                if (effectedRows > 0) {
//                    checkUpdate = true;
//                }
//            }

        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return checkUpdate;
    }
    public void showAcc()
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Get connection
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create sql string
                String sql = "Select username, password, phoneNum, custName, address, email\n"
                        + "From Customer ";
                //3. Create statement
                stm = con.prepareStatement(sql);
                //4. Execute Query
                rs = stm.executeQuery();
                //5. Process result
                while (rs.next()) {
                    //get field/column
                    String username = rs.getString("username");
                    String password = rs.getString("password");
                    String phoneNum = rs.getString("phoneNum");
                    String custName = rs.getString("custName");
                    String address = rs.getString("address");
                    String email = rs.getString("email");
                    //Create DTO instance
                    CustomerDTO dto = new CustomerDTO(username, password, phoneNum, address, custName, email);
                    //add to bookList
                    if (this.itemsList == null) {
                        this.itemsList = new ArrayList<>();
                    }//end bookList is not existed
                    this.itemsList.add(dto);
                }//end bookList is traversed
            }//end con is available
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
    
}
