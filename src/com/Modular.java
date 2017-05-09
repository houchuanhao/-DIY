package com;

/**
 * Created by Administrator on 2016-12-09.
 */
import com.Connecter;
import java.sql.ResultSet;
import com.Connecter;

import java.sql.ResultSet;

/**
 * Created by Administrator on 2016-12-08.
 */
public class Modular {
    public String id, mName, mInt, pUrl,mPrice;
    ResultSet resultSet;

    public Modular(String id) throws Exception {
        Connecter.createConnection();
        this.id=id;
        String sql = "select * from Modular where id='" + id + "'";
        resultSet = Connecter.statement.executeQuery(sql);
        while (resultSet.next()) {
            mName = resultSet.getString("mName");
            mInt = resultSet.getString("mInt");
            pUrl = resultSet.getString("pUrl");
            mPrice = resultSet.getString("mPrice");
        }
    }
}
