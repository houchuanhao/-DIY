package com;

import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;
import java.io.PrintWriter;
/**
 * Created by Administrator on 2016-12-08.
 */
public class ShowDiy {
   public HttpServletResponse response = null;
   public PrintWriter out;
   ShowDiy()throws Exception{
       out=response.getWriter();
   }
   /*
   <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="v3/default4.jpg" />
                        <div class="caption">
                            <h3>
                                DIY名字
                            </h3>
                            <p>
                                DIY简介
                            </p>
                            <p>
                                <a class="btn btn-primary" href="#">前往</a>
                            </p>
                        </div>
                    </div>
                </div>
   * */
   void showModel(){  //显示三分之一的缩略图

   }
}
