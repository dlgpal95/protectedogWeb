package org.protectedog.web.report;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.domain.FileDog;
import org.protectedog.service.domain.Message;
import org.protectedog.service.domain.Report;
import org.protectedog.service.file.FileService;
import org.protectedog.service.report.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/report/*")
public class ReportRestController {
	
	///Field
	@Autowired
	@Qualifier("reportServiceImpl")
	private ReportService reportService;
	
	@Autowired
	@Qualifier("fileServiceImpl")
	private FileService fileService;
	
	
	///Constructor
	public ReportRestController() {
		// TODO Auto-generated constructor stub
		System.out.println(this.getClass());
	}
	
	///Paging�� ���� Value����
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	///File Upload�� ���� path, �Խ��� Code ����
	@Value("#{commonProperties['flieReport']}")
	String fileroot;
	@Value("#{commonProperties['report']}")
	String reportBoardCode;
	
	///Method
	
	@RequestMapping(value="json/addReport", method=RequestMethod.POST)
	public Map<String, Object> addReport(@RequestBody Map<String, Object> jsonReport, 
							HttpSession session) throws Exception{

		System.out.println("/report/json/addReport : POST");
		
		Report report = new Report();
		report.setReportedId((String)jsonReport.get("reportedId"));
		report.setReporterId((String)jsonReport.get("reporterId"));
		report.setReportCategory((String)jsonReport.get("reportCategory"));
		report.setReportContent((String)jsonReport.get("reportContent"));
		
		reportService.addReport(report);
		report=reportService.getReport(report.getReportNo());
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		
		List<FileDog> listFile = new ArrayList<FileDog>();
		String[] fileList = jsonReport.get("file").toString().split(",");
		
		if (fileList.length > 0 && fileList[0] != "") {
		// ���ϵ�񿡳ֱ�
			for (String fileName : fileList) {
			
				if (fileName != null && fileName.length() > 0) {
			
						FileDog files = new FileDog();
						files.setBoardCode(reportBoardCode);
						files.setFileName(fileName);
						files.setFileCode(0);
						files.setPostNo(report.getReportNo());
						System.out.println("addReport postNo : "+report.getReportNo());
						listFile.add(files);
						System.out.println("addReport listFile : "+listFile.toString());
				}
			}
			fileService.addFile(listFile);
			
			Map<String, Object> filePost=new HashMap<String, Object>();
			filePost.put("boardCode", reportBoardCode);
			filePost.put("reportNo", report.getReportNo());
			List<FileDog> file=fileService.getFile(filePost);
			map.put("file", file);
		}
		
		map.put("report", report);
		
		
		return map;
		
	}
	
	@RequestMapping(value="json/getReport/{reportNo}", method=RequestMethod.GET)
	public Map<String, Object> getReport(@PathVariable int reportNo) throws Exception{
		
		System.out.println("/message/json/getMessage : GET");

		Date date=new Date();
		Report report=reportService.getReport(reportNo);
		date=report.getReportDate();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yy-MM-dd");
		String reportDate=dateFormat.format(date);

		Map<String, Object> filePost = new HashMap<String, Object>();
		filePost.put("boardCode", reportBoardCode);
		filePost.put("postNo", reportNo);
		List<FileDog> file = fileService.getFile(filePost);
		
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("report", report);
		map.put("reportDate", reportDate);
		map.put("file", file);
		
		return map;
		
	}
	
}