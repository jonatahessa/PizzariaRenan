<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="./_resources/estiloManutencao.css">
      <title>Manutenção</title>
    </head>
    <body>
      <section id="barra-superior" class="container-fluid">
          <div class="row">
              <div class="col-12">
                  <h1 class="text-center">Manutenção</h1>
              </div>
          </div>

          <div class="row justify-content-end">
            <div class="col-3">
              <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Opções
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="AbrirEditar">Novo</a>
                  <a class="dropdown-item" href="Logout">Sair</a>
                </div>
              </div>
          </div>
      </section>

      <section class="container-fluid">
            <div id="pizzas" class="row justify-content-center">
                <table class="col-12 table table-hover">
                  <thead>
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Descrição</th>
                        <th scope="col">Preço</th>
                        <th scope="col">Broto</th>
                        <th scope="col">Tipo</th>
                        <th scope="col">Ativo</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="produto" items="${produtos}">
                    <tr>
                      <td>${produto.codigo}</td>
                      <td>${produto.nome}</td>
                      <td>${produto.descricao}</td>
                      <td>${produto.preco}</td>
                      <td>${produto.precoBroto}</td>
                      <td>${produto.tipo}</td>
                      <td>${produto.ativo}</td>
                      <td><form action="AbrirEditar" method="get">
                        <input type="hidden" name="codigo-editar" value="${produto.codigo}">
                          <button class="btn btn-warning btn-block" type="submit" name="button">Editar</button>
                      </form></td>
                      <td><form action="AtivarDesativar" method="post">
                        <input type="hidden" name="codigo-ativar" value="${produto.codigo}">

                          <c:choose>
                            <c:when test="${produto.ativo == 'SIM'}">
                                <c:set value="btn-danger" var="cssClass"></c:set>
                                <c:set value="Desativar" var="textbtn"></c:set>
                              </c:when>
                              <c:otherwise>
                                <c:set value="btn-success" var="cssClass"></c:set>
                                <c:set value="Ativar" var="textbtn"></c:set>
                              </c:otherwise>
                            </c:choose>

                        <button class="btn ${cssClass} btn-block" type="submit">${textbtn}</button>
                      </form>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
            </div>
        </section>
    </body>
</html>
