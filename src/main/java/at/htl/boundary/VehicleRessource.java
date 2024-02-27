package at.htl.boundary;

import at.htl.control.VehicleRepository;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;

@Path("/vehicles")
public class VehicleRessource {

    @Inject
    VehicleRepository vehicleRepository;
    
    @GET
    public Response getVehicles() {
        return Response.ok(vehicleRepository.listAll()).build();
    }
}
