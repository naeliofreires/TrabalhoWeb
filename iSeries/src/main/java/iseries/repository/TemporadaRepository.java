package iseries.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import iseries.model.Temporada;

@Repository
public interface TemporadaRepository extends JpaRepository<Temporada, Integer> {

}
