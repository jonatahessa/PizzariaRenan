<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Acme|Lobster|Amaranth|Courgette" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <title>Rennan Pizzas</title>
    </head>
    <body>
      <section class="container-fluid">
        <header id="menu-desktop" class="row menu-top justify-content-end">
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-8 inside-header">
                <nav>
                    <a class="text-light" href="#section1"><strong>Home</strong></a>
                    <a class="text-light" href="#section2"><strong>Promoções</strong></a>
                    <a class="text-light" href="#section3"><strong>Cardápio</strong></a>
                    <a class="text-light" href="#section4"><strong>Localização</strong></a>
                    <a class="text-light" href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>


        <div id="menu-mobile" class="menu-top row">
            <div class="dropleft">
                <button class="btn menu-drop col-3 menu-button" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <img class="img-fluid" src="./_imagens/menu-mobile.png" alt="">
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#section1">Home</a>
                    <a class="dropdown-item" href="#section2">Promoções</a>
                    <a class="dropdown-item" href="#section3">Cardápio</a>
                    <a class="dropdown-item" href="#section4">Localização</a>
                    <a class="dropdown-item" href="#section5">Contato</a>
                </div>
            </div>
        </div>

            <div id="inicio" class="row justify-content-center sessoes">
                <div id="section1" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section1 padded">
                    <h1 class="fonte-amaranth text-warning">Home</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div id="cabecalho" class="col-11">
                            <img class="img-fluid" src="./_imagens/pizzahome.jpg" alt="">
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-9 text-light">
                            <p>Tradicional na região, a <strong>PIZZARIA MODELO</strong> vem unindo a tradição da pizza com a sofisticação informal. E não para de crescer, evoluir, adotando sempre o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                            <p>Com investimento constante nas instalações, produtos e serviços, faz com que a <strong>PIZZARIA MODELO</strong> seja considerada um novo clássico na terra das pizzarias.</p>
                            <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue sempre a ser: SERVIR PIZZAS COM CARINHO, DEDICAÇÃO E ALEGRIA.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section2" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section2 padded">
                    <h1 class="fonte-amaranth text-warning">Promoções</h1>
                    <hr/>
                    <c:forEach var="promocao" items="${promocoes}">
                        <div class="row justify-content-center">
                            <div class="paineis col-xs-12 col-sm-12 col-md-8 col-lg-6 border border-danger text-center bg-light">
                                <h2 class="text-danger fonte-acme">${promocao.nome}</h2>
                                <h3 class="text-dark fonte-acme">${promocao.descricao}</h3>
                                <h2 class="text-success fonte-acme">${promocao.preco}</h2>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section3" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section3 padded">
                    <h1 class="fonte-amaranth text-warning">Cardápio</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-cardapio" data-toggle="modal" data-target="#modal-pizzas">
                                <img class="col-5" src="./_imagens/pizzasalgada.png" alt="Foto de uma pizza salgada"><h3 class="fonte-acme text-warning">Clique para abrir Pizzas Salgadas</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-cardapio" data-toggle="modal" data-target="#modal-doces">
                                <img class="col-5" src="./_imagens/pizzadoce.png" alt="Foto de uma pizza doce"><h3 class="fonte-acme text-warning">Clique para abrir Pizzas Doces</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-cardapio" data-toggle="modal" data-target="#modal-beirutes">
                                <img class="col-5" src="./_imagens/beirute.png" alt="Foto de um beirute"><h3 class="fonte-acme text-warning">Clique para abrir Beirutes</h3>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section4" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section4 padded">
                    <h1 class="fonte-amaranth text-warning">Localização</h1>
                    <hr/>
                    <h4 class="text-center text-light">Rua Professor Belfort Sabino, 370 - Campininha, São Paulo - SP</h4>
                    <iframe class="col-12" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5021.877653908174!2d-46.67106914488145!3d-23.638162945045554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9946459dfceec7f3!2sPizzaria+Donatello!5e0!3m2!1spt-BR!2sbr!4v1520085393652" height="500px;" allowfullscreen></iframe>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section5" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section5 padded">
                    <h1 class="fonte-amaranth text-warning">Contato</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="text-center display-4">
                                <h1 class="text-light">5631-1685</h1>
                                <a class="btn btn-warning col-xs-10 col-sm-10 col-md-6 col-lg-5" href="tel:01156311685">Ligue!</a>
                                <h1 class="text-light">5631-5033</h1>
                                <a class="btn btn-warning col-xs-10 col-sm-10 col-md-6 col-lg-5" href="tel:01156315033">Ligue!</a>
                            </div>
                            <h3 class="text-center text-light">Atendemos todos os dias das 17h às 0h.</h3>
                            <p class="text-center text-light">Copyright (c) Pizzaria Modelo Copyright Holder All Rights Reserved.</p>
                            <p class="text-center text-light">Developed by Jonata Hessa</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="modal fade" id="modal-pizzas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Pizzas</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="col-12 cardapios">
                        <p class="grande-broto">Entrega</p>
                        <p class="grande-broto">Retirada</p>
                        <c:forEach var="pizza" items="${pizzas}">
                            <li class="menu-category titulopreco">
                                <div class="">
                                    <p class="titulo"><strong>${pizza.codigo} - ${pizza.nome}</strong></p>
                                    <p class="preco"><strong>${pizza.preco}</strong></p>
                                    <p class="preco"><strong>${pizza.precoBroto}</strong></p>
                                    <p class="descricao">${pizza.descricao}</p>

                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-doces" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Pizzas Doces</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="col-12 cardapios">
                      <p class="grande-broto">Entrega</p>
                      <p class="grande-broto">Retirada</p>
                        <c:forEach var="doce" items="${doces}">
                            <li class="menu-category titulopreco">
                                <div class="">
                                    <p class="titulo"><strong>${doce.codigo - 78} - ${doce.nome}</strong></p>
                                    <p class="preco"><strong>${doce.preco}</strong></p>
                                    <p class="preco"><strong>${doce.precoBroto}</strong></p>
                                    <p class="descricao">${doce.descricao}</p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-beirutes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Beirutes</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="col-12 cardapios">
                      <p class="grande-broto">Entrega</p>
                      <p class="grande-broto">Retirada</p>
                        <c:forEach var="beirute" items="${beirutes}">
                            <li class="menu-category titulopreco">
                                <div class="">
                                    <p class="titulo"><strong>${beirute.nome}</strong></p>
                                    <p class="preco"><strong>${beirute.preco}</strong></p>
                                    <p class="preco"><strong>${beirute.precoBroto}</strong></p>
                                    <p class="descricao">${beirute.descricao}</p>

                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
