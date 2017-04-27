require File.join(Rails.root, "app", "models", "Atencion.rb")
class ControlController < ApplicationController
  def insertar
    
   
  end
  
  def insertar_post
    @txt_cliente_atencion = params[:txt_cliente_atencion]   
    @num_valoracion_atencion = params[:num_valoracion_atencion]
    
    Rails.logger.debug("--------------> " + @txt_cliente_atencion)
    Rails.logger.debug("--------------> " + @num_valoracion_atencion)
    
    prod =  Atencion.new(:cliente => @txt_cliente_atencion, :valoracion => @num_valoracion_atencion)
    prod.save
    

    Rails.logger.debug("--------------> " + prod.cliente)
       
    render "insertar"
  end


  def buscar
  end
  
  def buscar_post
      @txt_cliente_atencion = params[:txt_cliente_atencion] 

      ######### 1 ############
      #producto = Producto.find(1)
      #Rails.logger.debug("------ Precio del Producto --------> " + producto.valoracion.to_s)
      
      
      
      ######### 2 ############
      #productos = Producto.take(3)
      #if productos.nil?
      #  Rails.logger.debug("--------------> esta vacio!... ")
      #else
      #  productos.each do |p|
      #    Rails.logger.debug("--------------> " + p.valoracion.to_s)
      #  end
      #end 

      ######### 3 ############
      #productos = Producto.find_by_sql("select * from productos where nombre like '%"+@txt_nombre_producto+"%'")
      @Clientes = Atencion.where(['cliente LIKE ?', "%#{@txt_cliente_atencion}%"]) 
      if @Clientes.nil? 
        Rails.logger.debug("--------------> esta vacio!... ")
     # else
      #  @Clientes.each do |p|
       #   Rails.logger.debug("--------------> " + p.valoracion.to_s)
        #end
      end 
      render "buscar"
  end
end
