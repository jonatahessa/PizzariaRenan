<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
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
              <div class="btn-group">
                <button id="options" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Opções</button>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="AbrirEditar">Novo Produto</a>
                  <a class="dropdown-item" href="Logout">Sair</a>
                </div>
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
