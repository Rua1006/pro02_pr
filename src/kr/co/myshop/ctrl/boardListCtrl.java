package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;



@WebServlet("/boardListCtrl")
public class boardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Driver = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/myshop";
	private static final String USER = "root";
	private static final String PASS = "a1234";
	String sql="";
	
	
    public boardListCtrl() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		// 데이터베이스 연결
		Class.forName(Driver);
		sql = "select * from notice order by notino desc";
		Connection con = DriverManager.getConnection(URL, USER, PASS);
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
			
							
		// 결과를 데이터베이스로 부터 받아서 리스트로 저장
		List<Notice> notiList = new ArrayList<Notice>();
		
		while(rs.next()){
			Notice vo = new Notice();
			vo.setNotiNo(rs.getInt("notino"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setAuthor(rs.getString("author"));
			vo.setResDate(rs.getString("resdate"));
			notiList.add(vo);
		}
		request.setAttribute("notiList",notiList);
		// notice/boardList.jsp 에 포워딩
		RequestDispatcher view = request.getRequestDispatcher("./notice/boardList.jsp");
		view.forward(request, response);
		
		rs.close();
		pstmt.close();
		con.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}

}
}