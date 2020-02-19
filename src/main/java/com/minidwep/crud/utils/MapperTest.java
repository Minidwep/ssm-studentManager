package com.minidwep.crud.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.minidwep.crud.bean.Staff;
import com.minidwep.crud.bean.Student;
import com.minidwep.crud.dao.StaffMapper;
import com.minidwep.crud.dao.StudentMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * ����Dao
 * 
 * @author Jack ����SpringTest
 * @ContextConfiguration ָ��Spring�����ļ���λ�� ֱ��autorwired
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class MapperTest {



	@Autowired
	StudentMapper employeeMapper;

	@Autowired
	SqlSession sqlSession;

	/**
	 * ����DepartMapper
	 */
	@Test
	public void test() {




//		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
//		for (int i = 0; i < 40; i++) {
//			String uid = UUID.randomUUID().toString().substring(0, 5)+i;
//			Student student = new Student();
//			int num = 20000+(int)((Math.random()*9+1)*1000);
//			student.setClassesId(2);
//			student.setStudentAge(20);
//			String time = "1998-07-23";
//			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//			Date dateTime = null;
//			try {
//				dateTime = simpleDateFormat.parse(time);
//				student.setStudentBirth(dateTime);
//				student.setStudentGender("F");
//				student.setStudentMobile("15688889999");
//				String na = "同学"+uid;
//				String str = new String(na.getBytes("gbk"),"utf-8");
//				student.setStudentName(str);
//
//				student.setStudentNumber(num);
//				mapper.insert(student);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//
//		}
		StaffMapper mapper = sqlSession.getMapper(StaffMapper.class);
		for (int i = 0; i < 40; i++) {
			String uid = UUID.randomUUID().toString().substring(0, 6)+i;
			Staff student = new Staff();
			int num = 200000+(int)((Math.random()*9+1)*1000);
			student.setClassesId(2);
			String time = "1998-07-23";
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date dateTime = null;
			try {
				dateTime = simpleDateFormat.parse(time);
				student.setStaffBitrh(dateTime);
				student.setStaffGender("M");
				student.setStaffMobile("15699990000");
				String na = "老师"+uid;
				String str = new String(na.getBytes("gbk"),"utf-8");
				student.setStaffName(str);

				student.setStaffNumber(num);
				mapper.insert(student);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}

}
