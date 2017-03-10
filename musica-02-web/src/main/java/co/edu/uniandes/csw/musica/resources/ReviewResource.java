/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.musica.resources;

import co.edu.uniandes.csw.musica.dtos.ReviewDTO;
import co.edu.uniandes.csw.musica.ejbs.ReviewLogic;
import co.edu.uniandes.csw.musica.entities.ReviewEntity;
import co.edu.uniandes.csw.musica.exceptions.BusinessLogicException;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServlet;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author jd.gonzaleza
 */
@Path("/funciones/reviews")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ReviewResource {
    @Inject
    private ReviewLogic logic;
    @Context
    HttpServlet http;
    
     private List<ReviewDTO> listEntity2DTO(List<ReviewEntity> entityList) {
        List<ReviewDTO> listDTO = new ArrayList<>();
        for (ReviewEntity c : entityList) {
            ReviewDTO est = new ReviewDTO(c);
            listDTO.add(est);
        }
        return listDTO;
    }

    @GET
    @Path("{id: \\d+}")
    public List<ReviewDTO> getReviews(@PathParam("id") Long id , ReviewDTO dto ) {
        System.out.println("co.edu.uniandes.csw.musica.resources.ReviewResource.getReviews()");

        return listEntity2DTO(logic.getReviewsParam(id));
    }
    
    
    @POST
    public ReviewDTO createReview(ReviewDTO dto) throws BusinessLogicException {
        ReviewEntity rev = logic.createReview(dto.toEntity());
        return new ReviewDTO(rev);
    }
    
}
