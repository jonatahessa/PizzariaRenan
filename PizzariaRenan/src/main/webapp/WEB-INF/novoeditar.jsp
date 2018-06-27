<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="./_resources/estiloNovoEditar.css">
      <script src="./_resources/domManutencao.js" type="text/javascript"></script>
      <title>Gerenciar</title>
    </head>
    <body>
      <section class="container-fluid">
          <div class="row">
              <form id="formulario" class="col-xs-12 col-sm-12 col-lg-6" action="Salvar" method="post">

                  <div>
                      <h2 class="text-center">Produto</h2>
                      <input type="hidden" value="${produto.codigo}" name="codigo">
                      <input type="hidden" value="${produto.ativo}" name="ativo">
                  </div>

                  <div class="form-group">
                      <label for="tipoProduto">Tipo</label>
                      <select id="select-tipo" class="form-control" name="tipo">
                          <option value="PIZZA" ${produto.tipo == 'PIZZA' ? 'selected' : ''}>Pizza</option>
                          <option value="DOCE" ${produto.tipo == 'DOCE' ? 'selected' : ''}>Pizza Doce</option>
                          <option value="BEIRUTE" ${produto.tipo == 'BEIRUTE' ? 'selected' : ''}>Beirute</option>
                          <option value="PROMOCAO" ${produto.tipo == 'PROMOCAO' ? 'selected' : ''}>Promoção</option>
                      </select>
                  </div>

                  <div id="nome" class="form-group">
                      <label for="nomeProduto">Nome</label>
                      <input class="form-control" type="text" value="${produto.nome}" name="nome"/>
                  </div>

                  <div id="descricao" class="form-group">
                      <label for="descricaoProduto">Descrição</label>
                      <textarea class="form-control" name="descricao" rows="3">${produto.descricao}</textarea>
                  </div>

                  <div id="preco" class="form-group">
                      <label for="">Entrega</label>
                      <input class="form-control" type="text" value="${produto.preco}" name="preco"/>
                  </div>

                  <div id="broto" class="form-group">
                      <label for="">Retirar</label>
                      <input class="form-control" type="text" value="${produto.precoBroto}" name="precoBroto"/>
                  </div>

                  <div class="form-inline">
                    <div class="col-6">
                      <a href="Manutencao" class="btn btn-danger btn-block" role="button">Cancelar</a>
                    </div>

                    <div class="col-6">
                      <button type="submit" class="btn btn-success btn-block">Salvar</button>
                    </div>
                  </div>
              </form>
          </div>
      </section>
    </body>
</html>
