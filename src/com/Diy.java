package com;
import com.Connecter;

import java.sql.ResultSet;

/**
 * Created by Administrator on 2016-12-08.
 */
public class Diy {
   public String id,dName,dInt,dCode,pUrl,userName;
    ResultSet resultSet;
    public Diy(String id) throws  Exception{
        Connecter.createConnection();
        String sql="select * from diy where id='"+id+"'";
        resultSet=Connecter.statement.executeQuery(sql);
        while(resultSet.next()){
            dName=resultSet.getString("dName");
            dInt=resultSet.getString("dInt");
            dCode=resultSet.getString("dCode");
            pUrl=resultSet.getString("pUrl");
            userName=resultSet.getString("userName");
        }
    }
}
