package it.finsoft.resources;

import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import it.finsoft.entity.MilestoneMilestone;
import it.finsoft.manager.MilestoneMilestoneManager;

@Stateless
@Path("resources")
@Produces({ MediaType.APPLICATION_JSON })
public class MilestoneMilestoneResources {
	
	@Inject
	MilestoneMilestoneManager milestoneMilestonesManager;
	
	@GET
	@Path("MilestoneMilestones")
	public List<MilestoneMilestone> findAll() {
		return milestoneMilestonesManager.findAll();
	}
	
	@GET
	@Path("MilestoneMilestones({id})")
	public MilestoneMilestone findById(@PathParam("id") Long id) {
		return milestoneMilestonesManager.findById(id);
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("MilestoneMilestones({id})")
	public MilestoneMilestone create(MilestoneMilestone cal) {
		System.out.println("post resources, salvo semaforomilestone " + cal);
		return milestoneMilestonesManager.save(cal);
	}

	@DELETE
	@Path("MilestoneMilestones({id})")
	public void delete(@PathParam("id") Long id) {
		milestoneMilestonesManager.remove(id);
	}

	@PUT
	@Path("MilestoneMilestones({id})")//richiede di inserire (in json) tutti i campi obbligatori
	public void update(@PathParam("id") Long id, MilestoneMilestone m) {
		m.setIdSemaforoMilestone(id);
		milestoneMilestonesManager.save(m);
	}

	/* ---- TEST RESOURCES ---- */
	@GET
	@Path("MilestoneMilestones/test")
	@Produces(MediaType.TEXT_PLAIN)
	public String prova() {
		System.out.println("ok MilestoneMilestones");
		return "ok MilestoneMilestones";
	}
	/* ---- TEST RESOURCES ---- */


}
