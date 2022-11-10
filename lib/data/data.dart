
class Data{

  List<Map<String, dynamic>> _data = [
    {
      "id": 1,
      "place": "Machu Picchu",
      "country": "Perú",
      "rate": 5,
      "reviews": 21323,
      "title": "La ciudadela de Machu Picchu en Cusco, Perú",
      "overview": "Descubierta en el año 1902 por Agustín Lizárraga y dada a conocer al mundo en 1911 por Hiram Bingham, la ciudad “perdida” de los Incas fue construida a mediados del siglo XV d. C por órdenes del Inca Pachacútec. Si bien este centro arqueológico no tiene nombre, Machu Picchu, la montaña donde se encuentra ubicada, significa en quechua “Montaña Vieja”. Según investigaciones, este lugar servía como un espacio de reposo para el Inca y estaba destinado a albergar un aproximado de 300 personas.",
      "price": 543.50,
      "days": 2,
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Machu_Picchu%2C_Peru.jpg/1200px-Machu_Picchu%2C_Peru.jpg"
    },

    {
      "id": 2,
      "place": "Chichén Itzá",
      "country": "México",
      "rate": 4,
      "reviews": 12456,
      "title": "Chichén Itzá en la península de Yucatán, México",
      "overview": "En el idioma Maya, su nombre significa “Boca del Pozo de los Brujos del Agua” ya que, según la creencia de esa época, el cenote sagrado servía como entrada al inframundo. Inaugurada en el año 525 d.C., este “castillo”, como denominaron los conquistadores españoles a esta maravilla mundial, sirvió como templo para el dios Kukulkán y consiste en una pirámide con una serie de terrazas cuadradas con escaleras que suben desde cada uno de los cuatro lados la misma hasta la parte superior. Fue declarada Patrimonio de la Humanidad por la UNESCO en el año 1988.",
      "price": 432.50,
      "days": 4,
      "image": "https://www.perurail.com/wp-content/uploads/2021/09/Chichen-Itz%C3%A1-.jpg"
    },

    {
      "id": 3,
      "place": "Coliseo de Roma",
      "country": "Italy",
      "rate": 3,
      "reviews": 53432,
      "title": "El Coliseo de Roma, Italia",
      "overview": "Este anfiteatro, el cual es el tesoro que el Imperio Romano dejó como herencia a la Ciudad Eterna, es una de las 7 maravillas del mundo moderno debido a que es el más grande nunca antes construido en el mundo. Su nombre original fue Anfiteatro Flavio y aquí se organizaban las luchas de los gladiadores, entre otros espectáculos. Funcionó durante más de 500 años y fue construido para soportar a más de 50 mil espectadores. Hoy en día es un atractivo turístico que atrae cada año a más de 100 mil turistas a la ciudad de la luz.",
      "price": 553.50,
      "days": 3,
      "image": "https://www.perurail.com/wp-content/uploads/2021/09/Coliseo-Romano.jpg"
    },

    {
      "id": 4,
      "place": "Cristo Redentor",
      "country": "Brasil",
      "rate": 5,
      "reviews": 12322,
      "title": "Cristo Redentor de Río de Janeiro, Brasil",
      "overview": "Otra de las 7 maravillas del mundo moderno es la gran estatua de Jesús de Nazaret con los brazos abiertos que se ve desde cualquier punto de la ciudad de Río de Janeiro en Brasil. Este monumento Art Decó de 30 metros de altura en lo más alto del cerro Corcovado fue inaugurado en 1931 y es el fruto del trabajo en conjunto del escultor polaco-francés Paul Landowski y del ingeniero brasileño Heitor da Silva Costa. Como dato curioso, la estatua fue construida en Francia y llegó a Brasil en cientos de partes solo para ser ensamblada desde la cabeza hasta los pies para poder ser levantada en el cerro.",
      "price": 555.50,
      "days": 6,
      "image": "https://www.perurail.com/wp-content/uploads/2021/09/Cristo-Redentor.jpg"
    },


  ];

  Future<List<Map<String, dynamic>>> fetchData() async {
    return Future.delayed(Duration(seconds: 4),(){
      return _data;
    });

  }
}