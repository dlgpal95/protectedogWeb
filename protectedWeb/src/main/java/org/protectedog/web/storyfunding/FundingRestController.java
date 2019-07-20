package org.protectedog.web.storyfunding;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Funding;
import org.protectedog.service.domain.User;
import org.protectedog.service.storyfunding.FundingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/funding/*")
public class FundingRestController {

	/// Field
	@Autowired
	@Qualifier("fundingServiceImpl")
	private FundingService fundingService;

	public FundingRestController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['fileSF']}")
	String fileroot;

	@RequestMapping(value = "json/listVoting/", method = RequestMethod.POST)
	public List<String> listProduct(@RequestBody Search search, HttpServletRequest request) throws Exception {

		System.out.println("/funding/json/listVoting");

		String keyword = search.getSearchKeyword();

		search.setSearchKeyword(keyword);

		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("searchKeyword", search.getSearchKeyword());
		searchMap.put("searchCondition", Integer.parseInt(search.getSearchCondition()));

		System.out.println("222" + search);
		if (Integer.parseInt(search.getSearchCondition()) == 0) {
			searchMap.put("field", "POST_TITLE");
		} else if (Integer.parseInt(search.getSearchCondition()) == 1) {
			searchMap.put("field", "NICKNAME");
		}

		List<String> list = fundingService.getAutoVoting(searchMap);
		System.out.println(" *********************** " + list);
		return list;
	}
			
	@RequestMapping(value = "json/addVoting", method = RequestMethod.GET)
	public int addVoting(HttpSession session) throws Exception {

		System.out.println("/funding/json/addVoting");
		
		User user = (User) session.getAttribute("user");
		Funding funding = fundingService.getPost(user.getId());
		
		if(funding != null) {
			return 1;
		}

		return 0;
	}		

}
