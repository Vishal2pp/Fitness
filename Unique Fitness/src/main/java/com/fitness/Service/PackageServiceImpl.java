package com.fitness.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.Model.Package;
import com.fitness.dao.PackageDao;

@Service
public class PackageServiceImpl implements PackageService{

	@Autowired
	private PackageDao pkgDao;
	@Override
	public List<Package> getAllPkgs() {
		return pkgDao.getAllPackages();
	}

}
