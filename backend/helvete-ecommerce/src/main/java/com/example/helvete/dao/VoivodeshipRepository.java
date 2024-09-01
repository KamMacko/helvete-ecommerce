package com.example.helvete.dao;

import com.example.helvete.entity.Voivodeship;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;


@RepositoryRestResource
public interface VoivodeshipRepository extends JpaRepository<Voivodeship, Integer> {

    List<Voivodeship> findByCountryCode(@Param("code") String code);
}
