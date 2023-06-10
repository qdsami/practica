package com.excelimport.excel.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Getter
@Setter

@Entity
@AllArgsConstructor
@NoArgsConstructor


public class Customer {
    @Id
    private Integer customerId;
    private String firstName;
    private String country;
    private String telephone;
}
