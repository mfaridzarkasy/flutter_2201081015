/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.farid.mahasiswa.controller;

import com.farid.mahasiswa.entity.Mahasiswa;
import com.farid.mahasiswa.request.MahasiswaRequest;
import com.farid.mahasiswa.service.MahasiswaService;
import jakarta.transaction.Transactional;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Dell
 */

@RestController
@RequestMapping("api/v1/mahasiswa")
public class MahasiswaController {

    @Autowired
    private MahasiswaService mahasiswaService;

    @GetMapping
    public List<Mahasiswa> getAll() {
        return mahasiswaService.getAll();
    }

    @GetMapping(path = "{id}")
    public Mahasiswa getMahasiswaById(@PathVariable("id") Long id) {
        return mahasiswaService.getMahasiswaById(id);
    }

    @PostMapping
    public void insert(@RequestBody Mahasiswa mahasiswa) {
        mahasiswaService.insert(mahasiswa);
    }

    @DeleteMapping(path = "{mahasiswaId}")
    public void delete(@PathVariable("mahasiswaId") Long id) {
        mahasiswaService.delete(id);
    }

    @PutMapping(path = "{mahasiswaId}")
    public ResponseEntity<String> update(@PathVariable("mahasiswaId") Long mahasiswaId,
                                         @RequestBody MahasiswaRequest mahasiswaRequest) {
        System.out.println("Received update request: " + mahasiswaRequest.toString());

        try {
            // Pastikan MahasiswaService.update diimplementasikan dengan benar
            mahasiswaService.update(mahasiswaId, mahasiswaRequest.getNama(), mahasiswaRequest.getEmail());
            return ResponseEntity.ok("Update successful");
        } catch (Exception e) {
            // Tangani kesalahan pembaruan
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Update failed");
        }
    }

    
}
