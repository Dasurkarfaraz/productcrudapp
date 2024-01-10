package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletMapping;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.productDao;
import productcrudapp.model.Product;

@Controller
public class MyController {

	@Autowired
	private productDao productDa;
	
	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("name", "Faraz Dasurkar");
		
		List<Product> products = productDa.getProducts();
		model.addAttribute("products", products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addproduct() {
		
		return "addproduct_form";
	}
	@RequestMapping(value = "/handleformadd" ,method = RequestMethod.POST)
	public RedirectView handleformadd(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDa.createproduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		
		return redirectView;
	}
	@RequestMapping(value="/delete/{productid}")
	public RedirectView delete(@PathVariable("productid") int productid,HttpServletRequest request) {
	
		this.productDa.deleteProduct(productid);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		
		return redirectView;
	}
	@RequestMapping(value="/update/{productid}")
	public String update(@PathVariable("productid") int productid,HttpServletRequest request ,  Model m) {
	
		Product product = this.productDa.getProduct(productid);
		m.addAttribute("product", product);
		return "updateproduct";
	}
}
	