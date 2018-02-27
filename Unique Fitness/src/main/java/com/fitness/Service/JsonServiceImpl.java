package com.fitness.Service;

import java.awt.image.PackedColorModel;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.Model.Package;
import com.fitness.dao.PackageDao;

@Service
public class JsonServiceImpl implements JsonService{

	@Autowired
	private PackageDao pkDao; 
	@Override
	public String allPackageJSON() {
		try {
			List<Package> pkgs = pkDao.getAllPackages();
			JSONObject main = new JSONObject();
			JSONArray array = new JSONArray();
			
			for(Package p : pkgs) {
				JSONObject temp = new JSONObject();
				temp.put("id", p.getPkgId());
				temp.put("name", p.getPkgName());
				temp.put("amount", p.getPkgAmount());
				temp.put("duration", p.getPkgDuration());
				temp.put("status", p.getPkgStatus());
				array.put(temp);
			}
			main.put("data", array);
			System.out.println(array.toString());
		}catch(JSONException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
