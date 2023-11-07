<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-BR">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap demo</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="../exe.MOD2/ag.css">
  <style>
    .carousel-inner {
      height: 400px;
      /* Ajustar a altura */
    }

    .carousel-item img {
      width: 100%;
      height: 400px;
      /* Ajuste a altura desejada */
      object-fit: cover;
      /* Para manter a proporção e preencher o espaço */
    }

    .carousel-caption {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      background-color: rgba(0, 0, 0, 0.7);
      /* cor  fundo  */
      color: white;
      /* Cor do texto */
      padding: 15px;
    }

/*começo footer */ 

    footer {
      background-color: rgb(63, 63, 63);
      padding: 10px;
    }

    .footer-info {
      display: flex;
      justify-content: space-between;
    }

    .contact-info {
      color: white;
      font-size: medium;
     }

    .end-info {
      color: white;
      font-size: medium;
    }
    
    .footer-text {
      text-align: center;
      color: white;

    }

    .img-footer {
      width: 250px;
    }
  
    .insta {
      background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
      -webkit-background-clip: text;

      background-clip: text;
      -webkit-text-fill-color: transparent;
      cursor: pointer;
    }

    .face {
      color: #3B5998;
      cursor: pointer;
    }

    .tw {
      color: #00acee;
      cursor: pointer;
    }

    .mess {
      color: #3B5998;
      cursor: pointer;

    }

    .whats {
      color: rgb(50, 192, 14);
      cursor: pointer;
    }


    @media screen and (max-width:600px) {
      footer .footer-info {
        display: flex;
        flex-direction: column;

      }
    }
    /*fim footer */ 
  </style>
</head>

<body>

  <nav class="navbar">
    <div class="container-fluid">
      <h1> Bora Agora?</h1>
      <a class="navbar-brand" href="#">Deixa conosco o planejamento!</a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a href="index.html" class="nav-link active" aria-current="page">Home</a>
          </li>
          <li class="nav-item">
            <a href="promocao.html" class="nav-link" aria-current="page">Promoções</a>
          </li>
          <li class="nav-item">
            <a href="destino.html" class="nav-link" aria-current="page">Destinos</a>
          </li>
          <li class="nav-item">
            <a href="contato.html" class="nav-link" aria-current="page">Contato</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Login
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="entrar.html">Entrar</a></li>
              <li><a class="dropdown-item" href="cadastro.html">Cadastre-se</a></li>
             </ul>
          </li>
    </ul>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Pesquisar</button>
        </form>
      </div>
    </div>
  </nav>
  <!--carrossel---->

  <main>
    <div id="carouselExampleCaptions" class="carousel slide">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="fortaleza.jpg" class="img-small" alt="Fortaleza">
          <div class="carousel-caption d-none d-md-block">
            <h5>Fortaleza</h5>
            <p> Com suas belas praias de água cristalina e areias douradas, como a Praia do Futuro e a Praia de Iracema,
              Fortaleza oferece um refúgio perfeito para relaxar e se divertir sob o sol!</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="rio.jpg" class="img-small" alt="Bonito">
          <div class="carousel-caption d-none d-md-block">
            <h5>Rio de Janeiro</h5>
            <p> A cidade do Rio de Janeiro é um verdadeiro paraíso tropical, onde a beleza natural se funde com a
              animada cultura brasileira!</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="caribe.jpg" class="img-small" alt="Caribe">
          <div class="carousel-caption d-none d-md-block">
            <h5>Caribe</h5>
            <p>São tantas opções paradisíacas na região que fica difícil escolher apenas uma ilha para visitar!</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </main>
  <!--fim carrossel-->

  <!--cards-->
  <div class="card my-3 mx-auto" style="max-width: 52vw;">
    <div class="row g-0">
      <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded;">
        <h5>Bem vindos a agência Bora Agora?</h5>
      </div>
      <div class="col-md-4 text-center">
        <img src="logo.nov.png" class="img-fluid rounded-start" alt="logo;">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title"></h5>
          <p class="card-text">Somos a Agência de Viagens Bora Agora?, sua parceira confiável para explorar o mundo!
            Com vasta experiência no setor, oferecemos roteiros personalizados, passagens aéreas, hospedagens e passeios
            emocionantes. Nossa equipe dedicada está pronta para transformar seus sonhos em realidade, proporcionando
            momentos inesquecíveis em cada jornada. Viaje com segurança, conforto e diversão ao seu lado.
            Descubra novos horizontes com a ViajaBem!</p>
        </div>
      </div>
    </div>
  </div>

  <!---Rodapé-->

  <footer>
    <div class="footer-info">
      <div class="contact-info">

        <h5>Telefone para contato</h5>
        </p>
        <p> (11) 3452-0777 </p>
        <p> (11) 96378-3952</p>
      </div>
      <div class="end-info">
        <h5>Endereço</h5>
        <p>Rua Tupinambá, 125 - Bairro Jaguaré</p>
        <p> São Paulo - SP</p>
      </div>
      <div class="social-media text-white">
        <h5> Nossas mídias sociais</h5>
        <i class="bi bi-instagram insta fs-4" onclick="window.open('https://www.instagram.com/', '_blank')"></i>
        <i class="bi bi-facebook face fs-4" onclick="window.open('https://www.facebook.com/', '_blank')"></i>
        <i class="bi bi-twitter tw fs-4" onclick="window.open('https://www.twitter.com/', '_blank')"></i>
        <i class="bi bi-messenger mess fs-4" onclick="window.open('https://www.messenger.com/', '_blank')"></i>
        <i class="bi bi-whatsapp whats fs-4 " onclick="window.open('https://web.whatsapp.com/', '_blank')"></i>
      </div>
    </div>
    <div class="footer-text">
      <p>&copy; 2023 Agência de Viagens. Todos os direitos reservados.</p>
      <img class="img-footer" src="footer3.png" alt="Bandeiras Cartoes">
    </div>
  </footer>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
</body>

</html>