package at.htl.control;

import at.htl.entity.Vehicle;

import jakarta.enterprise.context.ApplicationScoped;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

@ApplicationScoped
public class VehicleRepository implements PanacheRepository<Vehicle> {

}
