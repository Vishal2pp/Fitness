package com.fitness.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.DownloadDao;
import com.fitness.dao.MemberDao;
import com.fitness.dao.SmsEmailDao;

@Service
public class SmsEmailServiceImpl implements SmsEmailService{
	@Autowired
	private DownloadDao download;
	@Autowired
	private MemberDao member;
	@Autowired
	private SmsEmailDao smsEmail;
}
