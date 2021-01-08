package kr.co.kosmo.mvc.aop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.AdminInfoDao;
import kr.co.kosmo.mvc.dao.LoginLogDao;
import kr.co.kosmo.mvc.dto.LoginLogDTO;





@Component
@Aspect
public class LoginLogAspect {

	@Autowired
	private LoginLogDao loginLogDao;
	
	@Autowired
	private AdminInfoDao adminInfoDao;

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
					String ad_email = (String) session.getAttribute("ad_email");
					// 세션의 값을 얻어와서 존재할 경우만
					if (ad_email!=null) {
						// 데이터베이스에 저장할 값을 세팅
						vo.setAd_no((int)session.getAttribute("ad_no"));
						vo.setLog_status("로그인");
						vo.setLog_reip(getClientIpAddr(request));
						vo.setLog_login_fl("y");
						vo.setLog_uagent("web");
						loginLogDao.addLoginLog(vo);
					}else {
						ad_email = (String)request.getParameter("ad_email");
						int ad_no = adminInfoDao.ad_no(ad_email);
						vo.setAd_no(ad_no);
						vo.setLog_status("로그인");
						vo.setLog_reip(getClientIpAddr(request));
						vo.setLog_login_fl("n");
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
					if (ad_no != 0) { // 세션이 존재할 때 처리 
						// 데이터베이스에 저장할 값을 세팅
						vo.setAd_no(ad_no);
						vo.setLog_status("로그아웃");
						vo.setLog_reip(getClientIpAddr(request));
						vo.setLog_login_fl("y");
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
		return rpath;

	}
	
	//ip받아오기
	public static String getClientIpAddr(HttpServletRequest request) {
	    String ip = request.getHeader("X-Forwarded-For"); 
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("HTTP_CLIENT_IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("HTTP_X_FORWARDED_FOR");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getRemoteAddr();
	    } 
	    return ip;
	}
}


