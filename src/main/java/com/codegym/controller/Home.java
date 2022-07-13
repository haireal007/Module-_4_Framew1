package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.CrudProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class Home {
    @Autowired
    CrudProduct crudProduct;

    @GetMapping("/home")
    public String showHome(Model model) {
        model.addAttribute("product", crudProduct.products);
        return "home";
    }

    @GetMapping("/create")
    public String showCreate(Model model) {
        model.addAttribute("product", crudProduct.products);
        return "create";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute Product product) {
        crudProduct.products.add(product);
        return "redirect:/home";
    }

    @GetMapping("/edit")
    public String showEdit(@RequestParam int id, Model model) {
        for (Product p : crudProduct.products) {
            if (p.getId() == id) {
                model.addAttribute("product", p);
                break;
            }
        }
        return "edit";
    }

    @PostMapping("/edit")
    public String edit(@ModelAttribute Product product) {
        for (Product p : crudProduct.products) {
            if (p.getId() == product.getId()) {
                p.setName(product.getName());
                p.setPrice(product.getPrice());
                p.setImg(product.getImg());
                break;
            }
        }
        return "redirect:/home";
    }

    @GetMapping("/delete")
    public String showDelete(@RequestParam int id, Model model) {
        for (Product p : crudProduct.products) {
            if (p.getId() == id) {
                model.addAttribute("product", p);
                break;
            }
        }
        return "delete";
    }

    @PostMapping("/delete")
    public String delete(@ModelAttribute Product product) {
        for (Product p: crudProduct.products) {
            if (p.getId() == product.getId()){
                crudProduct.products.remove(p);
                break;
            }
        }
        return "redirect:/home";
    }
}
