package en.common.frame.shiro;

import java.util.Collection;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;

import en.basis.service.ILoginUserService;
import en.basisc.entity.LoginUser;
import en.common.frame.engine.IConstants;


public class SecurityRealm extends AuthorizingRealm{
	
	private static Logger logger  = LogManager.getLogger();
	
	private ILoginUserService loginUserService;
	
	 /** 
     * 为当前登录的Subject授予角色和权限 
     * @see 经测试:本例中该方法的调用时机为需授权资源被访问时 
     * @see 经测试:并且每次访问需授权资源时都会执行该方法中的逻辑,这表明本例中默认并未启用AuthorizationCache 
     * @see 个人感觉若使用了Spring3.1开始提供的ConcurrentMapCache支持,则可灵活决定是否启用AuthorizationCache 
     * @see 比如说这里从数据库获取权限信息时,先去访问Spring3.1提供的缓存,而不使用Shior提供的AuthorizationCache 
     */  
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		logger.info("------------开始 SecurityRealm doGetAuthorizationInfo----------");
		// String currentUsername = (String)super.getAvailablePrincipal(arg0);
		 SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
		 Subject currentUser = SecurityUtils.getSubject();
		 Collection<String> con =  (Collection)currentUser.getSession().getAttribute(IConstants.SHIRO_ROLE_INFO);
		for (String string : con) {
			//SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(); 
			simpleAuthorInfo.addStringPermission(string);
		}
		return simpleAuthorInfo;
		/* if(null!=currentUsername && "001".equals(currentUsername)){
		      //添加一个角色,不是配置意义上的添加,而是证明该用户拥有admin角色  
		      simpleAuthorInfo.addRole("admin");
		      //添加权限
		      simpleAuthorInfo.addStringPermission("admin:manage111");
		      logger.info("已为用户["+currentUsername+"]赋予了[admin]角色和[admin:manage]权限");
		      return simpleAuthorInfo;
		 }*/
		// return null;
	}
	 /**
	   * 验证当前登录的Subject
	   * @see 经测试:本例中该方法的调用时机为LoginController.login()方法中执行Subject.login()时
	   */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken arg0) throws AuthenticationException {
		
		 UsernamePasswordToken token = (UsernamePasswordToken)arg0;  
		try{
	
		    LoginUser luser = loginUserService.getUserByLoginName(token.getUsername(),token.getHost());
		   
		    if(luser == null)
		    	throw new AuthenticationException("无效的用户");
		    AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(luser.getLoginAccount(),luser.getLoginPassword(), this.getName());  
			//AuthenticationInfo authcInfo = new SimpleAuthenticationInfo("8888","123456", this.getName());  
           return authcInfo;  
		 }catch (Exception e) {
			 e.printStackTrace();
			 throw new AuthenticationException(e.getMessage());
		}
	}
	
	public void setLoginUserService(ILoginUserService loginUserService) {
		this.loginUserService = loginUserService;
	}
}
