package co.edu.uniandes.csw.musica.dtos;

import co.edu.uniandes.csw.musica.entities.EntradaEntity;
import co.edu.uniandes.csw.musica.entities.FuncionEntity;


/**
 * <!-- begin-user-doc -->
 * <!--  end-user-doc  -->
 * @generated
 */

public class EntradaDetailDTO extends EntradaDTO
{

    public FuncionDTO funcion;
    public ClienteDTO cliente;


    public EntradaDetailDTO(){
            super();
    }
    
    public EntradaDetailDTO(EntradaEntity entity) {
        super(entity);
        funcion  = new FuncionDTO();
        cliente = new ClienteDTO();
    }
    
    @Override
    public EntradaEntity toEntity() {        
        return super.toEntity();
    }

}

