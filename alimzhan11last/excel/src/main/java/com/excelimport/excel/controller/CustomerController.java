package com.excelimport.excel.controller;

import com.excelimport.excel.domain.Customer;
import com.excelimport.excel.service.CustomerService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("customers")
@AllArgsConstructor
public class CustomerController {
    private CustomerService customerService;
    @PostMapping("/upload-customer-data")
    public ResponseEntity<?> uploadCustomersData(@RequestParam("file")MultipartFile file){
        this.customerService.saveCustomersToDataBase(file);
        return ResponseEntity.ok(Map.of("Message", "Customers data uploaded"));
    }
    @GetMapping
    public ResponseEntity<List<Customer>> getCustomers(){
        return new ResponseEntity<>(customerService.getCustomers(), HttpStatus.FOUND);
    }
}
