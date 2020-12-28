package kr.co.kosmo.mvc.aop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.LoginLogDao;
import kr.co.kosmo.mvc.dto.LoginLogDTO;


@Component
@Aspect
public class MyAspect {

	@Autowired
	private LoginLogDao loginLogDao;

	// * kr.co.kosmo.mvc.controller.LoginCheckController.loginf*(..)
	@Around("execution(* kr.co.kosmo.mvc.controller.AdminInfoController.log_*(..))")
	public ModelAndView loginLogger(ProceedingJoinPoint jp) {
		// ���ڰ�
		Object[] fd = jp.getArgs();
		ModelAndView rpath = null;
		// �޼��� �̸�
		String methodName = jp.getSignature().getName();
		if (methodName.equals("log_loginCheck")) {
			// ���ǰ��� �ִٸ� �α��� ���� ����
			LoginLogDTO vo = new LoginLogDTO();
			try {
				rpath = (ModelAndView) jp.proceed(); // target�� �޼��带 ȣ���Ѵ�.
				// ù��°���ڿ� �ι��� �ΰ����� ������ �ν��Ͻ� �� ��쿡�� ����
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					int ad_no = (int) session.getAttribute("ad_no");
					System.out.println("mmmmmmmmmmmmmmmm"+ad_no+"mmmmmmmmmmmmmmmm");
					// ������ ���� ���ͼ� ������ ��츸
					if (ad_no != 0) {
						// �����ͺ��̽��� ������ ���� ����
						vo.setAd_no(ad_no);
						vo.setLog_status("login");
						vo.setLog_reip(request.getRemoteAddr());
						vo.setLog_uagent("web");
						loginLogDao.addLoginLog(vo);
					}
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		} else if (methodName.equals("log_logout")) {
			LoginLogDTO vo = new LoginLogDTO();
			try {
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					int ad_no = (int) session.getAttribute("ad_no");
					System.out.println("mmmmmmmmmmmmmmmm"+ad_no+"mmmmmmmmmmmmmmmm");
					if (ad_no != 0) { // ������ ������ �� ó�� 
						// �����ͺ��̽��� ������ ���� ����
						vo.setAd_no(ad_no);
						vo.setLog_status("logout");
						vo.setLog_reip(request.getRemoteAddr());
						vo.setLog_uagent("web");
						loginLogDao.addLoginLog(vo);
					}
					// logoutó�� 
					rpath = (ModelAndView) jp.proceed();
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		System.out.println("insert!===================");
		return rpath;

	}
}
