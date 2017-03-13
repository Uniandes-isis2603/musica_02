/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.musica.dtos;

import co.edu.uniandes.csw.musica.entities.ReviewEntity;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author jd.gonzaleza
 */
@XmlRootElement
public class ReviewDetailDTO extends ReviewDTO {

    private FuncionDTO funcionDTO;
    private ClienteDTO clienteDTO;

    /**
     * @return the funcionDTO
     */
    public FuncionDTO getFuncionDTO() {
        return funcionDTO;
    }

    /**
     * @param funcionDTO the funcionDTO to set
     */
    public void setFuncionDTO(FuncionDTO funcionDTO) {
        this.funcionDTO = funcionDTO;
    }

    /**
     * @generated
     */

    public ReviewDetailDTO() {
        super();
    }

    public ReviewDetailDTO(ReviewEntity entity) {
        super(entity);
        funcionDTO = new FuncionDTO(entity.getFuncion());
        clienteDTO = new ClienteDTO(entity.getCliente());

    }

    @Override
    public ReviewEntity toEntity() {

        ReviewEntity enti = super.toEntity();
        if (funcionDTO != null) {
            enti.setFuncion(getFuncionDTO().toEntity());
        }
        if (getClienteDTO() != null) {
            enti.setCliente(getClietneDTO().toEntity());
        }

        return enti;

    }

    /**
     * @return the clietneDTO
     */
    public ClienteDTO getClietneDTO() {
        return getClienteDTO();
    }

    /**
     * @param clietneDTO the clietneDTO to set
     */
    public void setClietneDTO(ClienteDTO clietneDTO) {
        this.setClienteDTO(clietneDTO);
    }

    /**
     * @return the clienteDTO
     */
    public ClienteDTO getClienteDTO() {
        return clienteDTO;
    }

    /**
     * @param clienteDTO the clienteDTO to set
     */
    public void setClienteDTO(ClienteDTO clienteDTO) {
        this.clienteDTO = clienteDTO;
    }
}
