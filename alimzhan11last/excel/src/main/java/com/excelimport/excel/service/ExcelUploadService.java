package com.excelimport.excel.service;

import com.excelimport.excel.domain.Customer;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

@Service
public class ExcelUploadService {
    public static boolean isValidExcelFile(MultipartFile file){
        return Objects.equals(file.getContentType(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" );
    }
    public static List<Customer> getCustomersDataFromExcel(InputStream inputStream){
        List<Customer> customers = new ArrayList<>();

        try {
            XSSFWorkbook  workbook = new XSSFWorkbook(inputStream);
            XSSFSheet sheet = workbook.getSheet("customer");

            int rowIndex =0;
            for (Row row : sheet){
                if (rowIndex == 0){
                    rowIndex++;
                    continue;
                }
                Iterator<Cell> cellIterator = row.iterator();
                int cellIndex = 0;
                Customer customer = new Customer();
                while (cellIterator.hasNext()){
                    Cell cell = cellIterator.next();
                    switch (cellIndex) {
                        case 0:
                            customer.setCustomerId((int) cell.getNumericCellValue());
                            break;
                        case 1:
                            customer.setFirstName(cell.getStringCellValue());
                            break;
                        case 2:
                            customer.setCountry(cell.getStringCellValue());
                            break;
                        case 3:
                            customer.setTelephone(String.valueOf(cell.getNumericCellValue()));
                            break;

                        // Другие case для остальных индексов
                        default:
                            // Обработка, если индекс не соответствует ни одному из case
                            break;
                    }
                    cellIndex++;
                }
                customers.add(customer);
            }
        } catch (IOException e) {
            e.getStackTrace();
        }
        return customers;

    }
}
