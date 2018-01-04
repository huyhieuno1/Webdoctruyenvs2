package group1.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import group1.model.TheLoai;
import group1.model.Truyen;
import group1.service.TheLoaiServiceimpl;
import group1.service.TruyenServiceimpl;


@RestController
public class RestPublicController {

	@Autowired
	TheLoaiServiceimpl theLoaiServiceimpl;
	@Autowired
	TruyenServiceimpl truyenServiceimpl;
	
	@RequestMapping(value = "/header/", method = RequestMethod.GET)
	public ResponseEntity<List<TheLoai>> listTL(){
		List<TheLoai> listTL = theLoaiServiceimpl.getList();
		System.out.println(listTL.size());
		 if(listTL.isEmpty()){
	            return new ResponseEntity<List<TheLoai>>(HttpStatus.NO_CONTENT);
	        }
	        return new ResponseEntity<List<TheLoai>>(listTL, HttpStatus.OK);
	}
	

	
	@RequestMapping(value = "/header/{id}", method = RequestMethod.GET)
	public ResponseEntity<List<Truyen>> listTr_Ca(@PathVariable("id") int id_TL){
		List<Truyen> listTr_Ca = truyenServiceimpl.getListTr_TL(id_TL);
		System.out.println(listTr_Ca.size());
		 if(listTr_Ca.isEmpty()){
	            return new ResponseEntity<List<Truyen>>(HttpStatus.NO_CONTENT);
	        }
	        return new ResponseEntity<List<Truyen>>(listTr_Ca, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/listTr/", method = RequestMethod.GET)
	public ResponseEntity<List<Truyen>> listTr(){
		List<Truyen> listTr = truyenServiceimpl.getListTr(); 
		System.out.println(listTr.size());
		 if(listTr.isEmpty()){
	            return new ResponseEntity<List<Truyen>>(HttpStatus.NO_CONTENT);
	        }
	        return new ResponseEntity<List<Truyen>>(listTr, HttpStatus.OK);
	}
	
	
}
