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
		// 인자값
		Object[] fd = jp.getArgs();
		ModelAndView rpath = null;
		// 메서드 이름
		String methodName = jp.getSignature().getName();
		if (methodName.equals("log_loginCheck")) {
			// 세션값이 있다면 로그인 정보 저장
			LoginLogDTO vo = new LoginLogDTO();
			try {
				rpath = (ModelAndView) jp.proceed(); // target의 메서드를 호출한다.
				// 첫번째인자와 두번재 인가값이 동일한 인스턴스 일 경우에만 동작
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					int ad_no = (int) session.getAttribute("ad_no");
					System.out.println("mmmmmmmmmmmmmmmm"+ad_no+"mmmmmmmmmmmmmmmm");
					// 세션의 값을 얻어와서 존재할 경우만
					if (ad_no != 0) {
						// 데이터베이스에 저장할 값을 세팅
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
					if (ad_no != 0) { // 세션이 존재할 때 처리 
						// 데이터베이스에 저장할 값을 세팅
						vo.setAd_no(ad_no);
						vo.setLog_status("logout");
						vo.setLog_reip(request.getRemoteAddr());
						vo.setLog_uagent("web");
						loginLogDao.addLoginLog(vo);
					}
					// logout처리 
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
