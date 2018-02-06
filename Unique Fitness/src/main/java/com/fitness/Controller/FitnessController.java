package com.fitness.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.fitness.Service.DownloadDataService;
import com.fitness.Service.MemberService;
import com.fitness.Service.SmsEmailService;

@Controller
public class FitnessController {
	@Autowired
	private DownloadDataService download;
	@Autowired
	private MemberService member;
	@Autowired
	private SmsEmailService smsMail;
}
