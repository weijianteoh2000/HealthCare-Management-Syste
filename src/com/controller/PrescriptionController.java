package com.controller;
import com.model.RecomMedicine;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import dbutil.RecomMedicineDAO;
import dbutil.StockDAO;
import java.text.DecimalFormat;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("prescription")
public class PrescriptionController {
    
   private StockDAO stockDAO =new StockDAO();
	
	@RequestMapping(value="/recommend",  method = RequestMethod.GET)
	protected ModelAndView details() {
		ModelAndView model = new ModelAndView("PrescriptionManagement/recommendMedicine");
                model.addObject("mList", stockDAO.getAll());
		return model;
	}

	/** can add throw exception 
	 * 2. quantity must > 0 */
	@RequestMapping(value="/recommend",  method = RequestMethod.POST)
	protected ModelAndView recommend(HttpServletRequest request) throws Exception{
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
		 try { 
		RecomMedicine i = new RecomMedicine(); 
		if(Integer.parseInt(request.getParameter("quantity"))<=0) throw new Exception("negativeValue");
		i.setPatientName(request.getParameter("patientName"));
                i.setIllness(request.getParameter("illness"));
                String meds= request.getParameter("medicine");
                i.setMedicine(meds);
                i.setPrice(stockDAO.findPriceByName(meds));
                i.setReferenceNo(request.getParameter("referenceNo"));
		i.setQuantity(request.getParameter("quantity"));
		i.setDateVisited(request.getParameter("dateVisited"));
                i.setDoctor(String.valueOf(request.getSession().getAttribute("username")));
		int rw = recomMeddao.add(i);
		}
		catch(Exception e) {
                    e.printStackTrace();
			ModelAndView model = new ModelAndView("PrescriptionManagement/recommendMedicine");
			System.err.print(e.toString());
			if(e instanceof DuplicateKeyException) {
				model.addObject("duplicateError",e);
			}else if(e.toString().equals("negativeValue")) {
				model.addObject("negativeValue",e.toString());
			}
			return model;
		}
		//List<Stock> sList = recomMeddao.getAll();
		ModelAndView model = new ModelAndView("PrescriptionManagement/recommendMedicine");
		//model.addObject("sList",sList);
		model.addObject("successAdd","New Medicine Recommended successfully !!");
		return model;
	}
        
        @RequestMapping("/history")
	protected ModelAndView history(HttpServletRequest request) {
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
		List<RecomMedicine> sList = recomMeddao.findByDoctor(String.valueOf(request.getSession().getAttribute("username")));
                List<String> pList = recomMeddao.findUniquePatient();
		ModelAndView model = new ModelAndView("PrescriptionManagement/allHistory");
		model.addObject("sList",sList);
                model.addObject("pList",pList);
		return model;
	}
        
        @RequestMapping("/filterPatientList")
	protected ModelAndView filterPatientList(HttpServletRequest request) {
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
                String pname= request.getParameter("patientName");
                List<RecomMedicine> sList = recomMeddao.findByPatientAndDoctor(pname,String.valueOf(request.getSession().getAttribute("username")));
                List<String> pList = recomMeddao.findUniquePatient();
		ModelAndView model = new ModelAndView("PrescriptionManagement/allHistory");
		model.addObject("sList",sList);
                 model.addObject("pList",pList);
		return model;
	}
        
        
	@RequestMapping("updateRecommend")
	protected ModelAndView updateRecommendForm(HttpServletRequest request) {
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
		int id = Integer.parseInt(request.getParameter("updateindex"));
		RecomMedicine recomMed = recomMeddao.findById(id);
		ModelAndView model = new ModelAndView("PrescriptionManagement/updateRecommendMedicine");
		model.addObject("sDetails",recomMed);
                model.addObject("mList", stockDAO.getAll());
		return model;
	}
        

	@RequestMapping(value="updateRecommend",  method = RequestMethod.POST)
	protected ModelAndView updateRecommend(HttpServletRequest request) throws Exception{
		RecomMedicine i = new RecomMedicine();
		int id = Integer.parseInt(request.getParameter("id"));
                
		if(Integer.parseInt(request.getParameter("quantity"))<=0) throw new Exception("negativeValue");
		i.setPatientName(request.getParameter("patientName"));
                i.setIllness(request.getParameter("illness"));
                String  meds= request.getParameter("medicine");
                i.setMedicine(meds);
                i.setPrice(stockDAO.findPriceByName(meds));
                i.setReferenceNo(request.getParameter("referenceNo"));
		i.setQuantity(request.getParameter("quantity"));
		i.setDateVisited(request.getParameter("dateVisited"));
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
		int rw = recomMeddao.update(i,id);
		return history(request);
	}
        
        @RequestMapping("/patientList")
	protected ModelAndView patientList(HttpServletRequest request) {
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
		List<RecomMedicine> sList = recomMeddao.getAll();
		ModelAndView model = new ModelAndView("PrescriptionManagement/patientList");
		model.addObject("sList",sList);
		return model;
	}
        
        @RequestMapping("/medicineList")
	protected ModelAndView medicineList(HttpServletRequest request) {
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
                String dateVisit=OffsetDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		List<String> sList = recomMeddao.findUniquePatient(dateVisit,false);
                System.out.println("---dv "+dateVisit+" "+sList);
		ModelAndView model = new ModelAndView("PrescriptionManagement/medicineList");
		model.addObject("sList",sList);
		return model;
	}
        
        
        @RequestMapping(value="/generateMedicineList", method = RequestMethod.POST)
	protected ModelAndView generateMedicineList(HttpServletRequest request) {
		RecomMedicineDAO recomMeddao = new RecomMedicineDAO();
                String dateVisit=OffsetDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		List<String> sList = recomMeddao.findUniquePatient(dateVisit,false);
               String pname= request.getParameter("patientName");
               //System.out.println("--- "+pname);
                List<RecomMedicine> medicineList = recomMeddao.findByPatientWithDate(pname,dateVisit);
                // Update the status done & calculate total
                double total=0;
                for(RecomMedicine rm:medicineList){
                    recomMeddao.updateStatus(rm.getId(), true);
                    // Update the stock price with sell price by X final price with 1.2
                    total+= (Integer.parseInt(rm.getQuantity()) * rm.getPrice())* 1.2f;
                }
                DecimalFormat df = new DecimalFormat("#.##");
               // System.out.println("--- "+medicineList);
		ModelAndView model = new ModelAndView("PrescriptionManagement/medicineList");
		model.addObject("sList",sList);
                model.addObject("medicineList",medicineList);
                model.addObject("pname",pname);
                model.addObject("total", df.format(total));
                model.addObject("date",OffsetDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")));
		return model;
	}
	
}
