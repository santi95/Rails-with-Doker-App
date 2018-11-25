# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([{
  name:  "María José Ramírez",
  email: "mj_ramirez@gmail.com",
  password:              "foobar",
  password_confirmation: "foobar",
  role: "admin"
},
{
  name:  "Matías San José",
  email: "m_sanjose@gmail.com",
  password:              "foobar1",
  password_confirmation: "foobar1"
},
{
  name:  "Margarita Casanova",
  email: "m_casanova@gmail.com",
  password:              "foobar3",
  password_confirmation: "foobar3"
},
{
  name:  "José Gaggero",
  email: "j_gaggero@gmail.com",
  password:              "foobar4",
  password_confirmation: "foobar4"
},
{
  name:  "Sebastián Zuñiga",
  email: "s_zuñiga@gmail.com",
  password:              "foobar6",
  password_confirmation: "foobar6"
},
{
  name:  "Ignacio Solis",
  email: "i_solis@gmail.com",
  password:              "foobar7",
  password_confirmation: "foobar7"
},
{
  name:  "Javier Ruiz",
  email: "j_ruiz@gmail.com",
  password:              "foobar8",
  password_confirmation: "foobar8"
},
{
  name:  "Sebastián Cardenas",
  email: "s_cardenas@gmail.com",
  password:              "foobar9",
  password_confirmation: "foobar9"
},
{
  name:  "Santiago Astaburuaga",
  email: "a_astaburuaga@gmail.com",
  password:              "foobar10",
  password_confirmation: "foobar10"
},
{
  name:  "Loreto Pérez",
  email: "l_perez@gmail.com",
  password:              "foobar11",
  password_confirmation: "foobar11"
},
{
  name:  "Joaquín Romero",
  email: "j_romero@gmail.com",
  password:              "foobar12",
  password_confirmation: "foobar12"
},
{
  name:  "Felipe Apablaza",
  email: "f_apablaza@gmail.com",
  password:              "foobar13",
  password_confirmation: "foobar13"
},
{
  name:  "Carlos Duarte",
  email: "c_duarte@gmail.com",
  password:              "foobar14",
  password_confirmation: "foobar14"
},
{
  name:  "Sebastian Rivera",
  email: "s_rivh@gmail.com",
  password:              "foobar15",
  password_confirmation: "foobar15"
},
{
  name:  "Javiera Sazo",
  email: "j_sazo@gmail.com",
  password:              "foobar16",
  password_confirmation: "foobar16"
},
{
  name:  "Camila Fell",
  email: "c_fell@gmail.com",
  password:              "foobar17",
  password_confirmation: "foobar17"
},
{
  name:  "Camila Sepulveda",
  email: "c_sepulveda@gmail.com",
  password:              "foobar18",
  password_confirmation: "foobar18"
},
{
  name:  "Valentina Castro",
  email: "v_castro@gmail.com",
  password:              "foobar19",
  password_confirmation: "foobar19"
}
])

us_1 = User.find_by(email: "mj_ramirez@gmail.com")
us_2 = User.find_by(email: "m_sanjose@gmail.com")
us_3 = User.find_by(email: "j_sazo@gmail.com")
us_4 = User.find_by(email: "m_casanova@gmail.com")
us_5 = User.find_by(email: "j_gaggero@gmail.com")
us_6 = User.find_by(email: "s_zuñiga@gmail.com")
us_7 = User.find_by(email: "i_solis@gmail.com")
us_8 = User.find_by(email: "j_ruiz@gmail.com")
us_9 = User.find_by(email: "s_cardenas@gmail.com")
us_10 = User.find_by(email: "a_astaburuaga@gmail.com")
us_11 = User.find_by(email: "l_perez@gmail.com")
us_12 = User.find_by(email: "j_romero@gmail.com")
us_13 = User.find_by(email: "f_apablaza@gmail.com")
us_14 = User.find_by(email: "c_duarte@gmail.com")
us_15 = User.find_by(email: "s_rivh@gmail.com")
us_16 = User.find_by(email: "c_fell@gmail.com")
us_17 = User.find_by(email: "c_sepulveda@gmail.com")
us_18 = User.find_by(email: "s_rivh@gmail.com")


forum_1 = Forum.create(name:"Freeskiing",
                     subject: "Backcountry Skiing",
                     description: "In this forum you can see posts about different kinds of skis, bindings, avalanche gear, safety tips among many other things that people who love the backcountry would appreciate.",
                     user_id: us_1.id)
forum_2 = Forum.create(name: "Snowboard",
                     subject: "Ski Resort Sport",
                     description: "Buenas hice este foro para q pongamos datos de hospedaje,vuelos, todo sobre el mundial , si alguien sabe como es la manera más económica de llegar a Rusia dejen datos.",
                     user_id: us_14.id)
forum_3 = Forum.create(name: "Randonee",
                     subject: "Mountaineering",
                     description: "Preguntas, respuestas, ideas, compartamos nuestras mejores recetas. Además de un diario semanal de lo que horneamos. Eso sí, si pones algo de un libro, haz referencia a la fuente y respeta a los autores, no se trata de volcar aquí libros enteros",
                     user_id: us_15.id)
forum_4 = Forum.create(name: "High Altitude Ice Climbing",
                     subject: "Mountaineering",
                     description: "Todo acerca de las cartas en Clash Royale",
                     user_id: us_18.id)
forum_5 = Forum.create(name: "High Altitude Camping",
                       subject: "Mountaineering",
                       description: "Acá puedes publicar acerca de todos los truquitos para el pelo que quieras compartir",
                       user_id: us_17.id)
forum_6 = Forum.create(name: "Snowmobiles",
                       subject: "Sidecontry",
                       description: "Aquí encontrarás preguntas y respuestas relacionadas  con el peso, los entrenamientos, los masajes, bajar grasa abdominal, electroestimulación, qué comer para rendir más, ganar masa muscular, dietas y mucho más…

Comparte con nosotros tus dudas e inquietudes.

Deja tu pregunta aquí debajo. Vamos a  intentar ayudarte.",
                       user_id: us_2.id)


post_1 = Post.create(title: "Choosing the right ski",
                     topic: "Skis",
                     content: "Freeride skis changed a bit over the past twenty years. The freeride ski of today is very different than the skis they were using to ride powder in the nineties or even back in 2010. Back in the days, the word 'freeride' didn't even exist. It was just off-piste. Not that long ago (I'm getting old) I was skiing pow on Atomic ATC's of more than two meters in Tignes. Width under the foot about 60 mm and a radius of about 50 meters. Rocker? Well the only rocker you had became visible when you skied straight into a mogul. Salomon introduced the X-scream Series, which had more the look and feel of a freeride ski, but was still only 66 mm under foot. The Pocket Rocket was the ski that really brought 'powder to the people'. Much wider than regular skis and therefore much more float. Skiing powder became easy. Over the years, a lot of types of skis has been added to the freeride segment. Every brand has a complete line of different models. One ski great for big lines, the other perfect in the trees. There's so much to choose from. So the question is: how do you find the perfect freeride skis?
                      What's really important?
                      In the end, it is important that the ski that you choose fits you and meets your expectations. That's nothing new so far. You should test some skis on real snow, to really feel how they ski and behave in different snow conditions. We explain why sidecut, width, rocker and camber are critical when choosing a ski. And you should really 'feel' the ski. That almost sounds philosophical (it is actually), but although specs are really important, you should trust your ski at all times. But anyway, let's talk about the more tangible things!
                      Is fatter really better?
                      There was a time when the skis seemed to get fatter (as in: wider) each season. And it was called progress. However, fatter is not always better. The rule of thumb is simple: the fatter the ski under the foot, the more float. But a ski that's too wide should compromise. Think about stiffness, rebound, sidecut, transitions, that kind of stuff. Skis wider than 115 mm between the bindings are really only interesting on days when it's ultra deep.
                      Everything up to 85 mm: great for the groomers
                      85 mm - 95/100 mm: allmountain ski
                      95/100 - 115 mm: freeride/powder ski
                      Everything above 115 mm: deep, deep days
                      Of course, you could discuss this listing for hours, but the fact is that almost everyone agrees that the ultimate one-ski quiver (one ski that can do anything) fits in the 95/100 - 115 mm category.",
                     forum_id: forum_1.id,
                     user_id: us_3.id)

post_17 = Post.create(title: "Choosing the right bindings",
                     topic: "Bindings",
                     content: "The most trusted binding in alpine skiing is back. The Rossignol FKS 180 Ski Bindings feature bombproof construction and deliver better retention and prevention of pre-release than any binding on the market. FKS bindings feature 7-points of boot contact giving superior control, response and snow feel. Skiers have less concern with pre-release due to the longest elastic travel on the market. The heelpiece rotates with the boot directly under the tibia to give more consistent, reliable and manageable release. The all-metal reinforced Pivot toepiece has 180 degree multi-directional release with high vertical and lateral elastic travel to provide shock absorption, further reducing inadvertent release. Using the shortest mounting zone available, the FKS allows deeper, rounder, more consistent ski flexing, turning, floating and smearing. The Rossignol FKS 180 Ski Bindings come in multiple brake sizes to accommodate your needs and provide the most reliable, durable and performance-oriented construction available for aggressive freeskiers.",
                     forum_id: forum_1.id,
                     user_id: us_4.id)

post_2 = Post.create(title: "Transporte y desplazamientos en Rusia",
                     topic: "Transporte en Rusia",
                     content:"Lo más habitual es llegar a Rusia en avión, aunque hay viajeros que llegan mediante algún crucero a San Petersburgo. También he conocido gente que ha viajado en coche, en bicicleta o incluso a pie. Te explico la manera más económica de llegar en avión a Rusia y las diferentes combinaciones de vuelos existentes para llegar a Moscú o San Petersburgo.Además, a tu llegada a Rusia deberás saber las diferentes posibilidades para llegar desde el aeropuerto al centro de ciudades como Moscú o San Petersburgo: Aeroexpress, Metro, autobús y taxi.",
                     forum_id: forum_2.id,
                     user_id: us_5.id)
post_3 = Post.create(title: " Receta de para hacer un buen Baguette",
                     topic: "Baguette",
                     content: "Masa,

393gr. harina blanca T55 o panadera Amasadero (100%)
257gr. agua	(65%)
1.6gr. levadura instantánea (0.4%)
8gr. sal (2%)

1.	Mezclar la harina y el agua en un bol asegurándose de que no quede harina seca. Dejar reposar una hora.

2.	Sacar la masa del bol y añadir la levadura. Amasar un par de minutos. Añadir la sal y amasar un par de minutos. Dejar reposar 5 minutos. Seguir amasando hasta que la masa esté elástica y bonita, usar la prueba de la ventana, la podéis ver aquí.

3.	Bolear, y meter en un bol enaceitado. A la hora, doblar dentro del bol. Repetir cada 45 minutos dos veces más (siempre que lo pida la masa), y en la última, dar la vuelta a la masa. Dejar reposar otra hora.

4.	Volcar la masa sobre una encimera enharinada y cortar en tantos trozos como baguettes quieras hacer. Preformar y formar con un descanso entre medias de entre 10 y 20 minutos. Dejar reposar cubierto entre una hora y hora y media, según nos indique la masa.

5.	Precalentar el horno a 250C.

6.	Poner agua a hervir. Destapar las baguettes e ir colocándolas sobre la bandeja de hornear y greñar. Si vamos a usar piedra, volcaremos sobre la pala de baguette y en esta misma haremos los greñados. Podéis optar por usar papel de hornear sobre la pala, o enharinarla con harina de centeno. Colocar el agua hervida cerca del horno para poder hacer la siguiente operación con rapidez.

7.	Si estamos usando bandeja, meterla en el horno, rociar la piedra volcánica con el agua hirviendo y cerrar la puerta. Si estamos usando pala y piedra, meter la primera baguette, luego la segunda, y tras la última, rociar con el agua la piedra volcánica. Bajar la temperatura a 200C.

8.	A los 10 minutos dar la vuelta a la bandeja si es lo que estamos usando, o a las baguettes si estamos usando piedra, y sacar la piedra volcánica del horno, dejando la puerta abierta unos treinta segundos. A los 5 minutos, colocar un paño en la puerta de tal forma que quede una pequeña rendija abierta por donde escape el vapor que pueda quedar para que así se termine de secar la baguette. A los 5 minutos, sacar del horno y colocar sobre una rejilla con patas. Consumir preferiblemente entre las primeras cuatro horas. ",
                     forum_id: forum_3.id,
                     user_id: us_9.id)
post_4 = Post.create(title: "Receta de croissants",
                     topic: "Croissants",
                     content:"Y aquí les dejo mi receta de MASA DANESA , no es nada del otro jueves, pero es la que yo he hecho varias veces y me da buen resultado:
Ingredientes:
Harina fuerte…………….….….......600g
Harina floja………………....…….....200g
Agua……………………….…….......300mL
Leche………………………….........100mL
Sal……………………….………........….15g
Azúcar…………………….……......….160g
Levadura……………………......…….…10g
Huevos……………………….....…3-4unds.
Mantequilla……………………......……40g
Mantequilla para hojaldrar……….400g

ESPONJA:
Harina fuerte……………………....…200g
Levadura…………………….............30g
Agua………………………………......140mL

Elaboración:
Preparamos la esponja y esperamos a que doble de volumen.
Pesamos y amasamos todos los ingredientes menos la mantequilla para hojaldrar. Tª masa = 21ºC.
Atemperamos la mantequilla durante 1 hora. La golpeamos dentro de papel vegetal, hasta que consigamos extenderla a un tamaño adecuado.
Boleamos la masa y hacemos una cruz en la masa para incorporar la mantequilla en el centro. Dejamos reposar 10 minutos.
Extendemos cada uno de los “pétalos de la flor”, cuidando de dejar algo más de masa en el centro. Colocamos la mantequilla.
Tapamos la mantequilla correctamente. Para ello, yo suelo elegir el “pétalo más bonito” y lo dejo para el final. Es como hacer la cama, vamos colocando las sábanas por orden, primero una y luego otra, así hasta llegar al último pétalo.
Golpeamos el plastón con cuidado de que no se nos salga la mantequilla para darle un poco de anchura. Demos recordar utilizar bastante harina sobre la mesa para que no se nos pegue si tenemos alguna “fuga”. Estiramos a modo de rectángulo con un grosor de 1cm aprox.
Dejamos reposar 5 minutos y damos 1 vuelta sencilla. Estiramos otra vez a modo de rectángulo y antes de proceder a dar la siguiente vuelta
recordamos que tenemos que girar 90º la masa de modo que la segunda vuelta cierre los pliegues de la primera.
Dejar descansar en el frigorífico tapado con film unos 30 minutos. Dar VS.
Descansar otros 30 minutos y dar la última VS. A partir de este momento se procede al formado. Si se quiere se puede guardar la masa estirada en el frigo, bien tapadita, durante unas 8 horas.
Estiramos la masa en forma de rectángulo ó cuadrado (unos 3mm de grosor). Cortamos los bordes para que queden líneas rectas, y después con una puntilla vamos formando triángulos isósceles con una pequeña incisión en uno de sus lados de 1-2cm. Enrollamos cada croissant partiendo desde el lado con la incisión y pegamos la punta final con un poquito de agua para que no se desprenda en la cocción.
Fermentamos hasta que casi doblen su volumen.
Pintamos de huevo y horneamos a 180ºC hasta que estén doraditos.
Enfriar sobre rejilla. Cuando estén fríos se pueden pintar con gelatina ligera o con un almíbar.

Y ahora ya, ¡¡¡a coger el rodillo y las ganas para hacer croissants hasta que tiemble nuestro país vecino!!!",
                     forum_id: forum_3.id,
                     user_id: us_13.id)
post_5 = Post.create(title: "Mago",
                     topic: "Cartas",
                     content: "El mago, el tipo más maravilloso que ha pisado la arena, te hará volar por los aires con su guaperia.... y sus bolas de fuego.
                     Costo: 5
                     Velocidad de Ataque: 1.4s
                     Objetivos: De Aire y de Tierra
                     Velocidad: Media
                     Alcance: 5.5
                     Tiempos de despliegue: 1S
                     Calidad: Especial",
                     forum_id: forum_4.id,
                     user_id: us_6.id)
post_6 = Post.create(title: "Bruja Nocturna",
                     topic:"Cartas",
                     content: "Invoca murciélagos a sus órdenes, incluso tras morir. Si te acercas demasiado a ella, no dudará en echar mano de su temible vara.
                     Costo: 5
                     Velocidad de Ataque: Media
                     Objetivos: Terrstre
                     Velocidad: Media
                     Alcance: Cuerpo a cuerpo
                     Tiempos de despliegue: 1S
                     Calidad: Especial",
                     forum_id: forum_4.id,
                     user_id: us_4.id)
post_7 = Post.create(title: "Veneno",
                     topic: "Cartas",
                     content: "Cubre la zona afectada con una toxina letal que daña a las tropas y estructuras enemigas con el paso del tiempo. Y, sin embargo, parece que al césped le va de maravilla; ¡vaya cosas!
                       Costo: 4
                       Velocidad de Ataque: Media
                       Objetivos: De tierra y aire
                       Tiempos de despliegue: 1S
                       Calidad: Epica",
                     forum_id: forum_4.id,
                     user_id: us_11.id)
post_9 = Post.create(title: "Baja de peso haciendo spinning",
                     topic: "Deporte",
                     content:"La clave del beneficio de este deporte está en dos puntos fundamentales.

El primero es que el spinning es un deporte que se hace con las piernas.

Los ejercicios que más calorías queman son aquellos que utilizan los músculos más grandes del cuerpo, y en las piernas tenemos casi el 50% de ellos.

Los músculos más grandes consumen mucha más energía y queman más calorías que los músculos pequeños.

Ya sabes que la grasa es energía acumulada por el organismo (tomas calorías de más y el cuerpo la almacena en forma de grasa para utilizarla en el futuro como energía).

La segunda es que el spinning es un deporte aeróbico, pero también te da la posibilidad de hacer series anaeróbicas.

Las series por encima de tu umbral aeróbico harán que estés quemando calorías por más tiempo incluso horas después de haber terminado el ejercicio.

",
                     forum_id: forum_6.id,
                     user_id: us_7.id)
post_8 = Post.create(title:"¿Cómo hacer que el pelo crezca más rápido?",
                     topic: "Crecimiento de pelo",
                     content: "Hola!! Me acabo de abrir un canal de youtube donde tratare temas sobre el pelo, mascarillas sanas para que crezca más rápido, trucos super sencillos.Sin embargo, en esta publicación puedes comentat qué te parecen mis videos.",
                     forum_id: forum_5.id,
                     user_id:us_18.id)

comment_1 = Comment.create(content: "Totalmente de acuerdo. Si no limpias habitualmente las brochas, es mejor que te compres alguna nueva, porque no es nada sano utilizarlo mucho y no tener un mantenimiento de ello.",
                           post_id: post_1.id,
                           user_id: us_4.id)
comment_2 = Comment.create(content: "Muchas personas experimentas alergias severas y acné sin razón pero realmente es porque no limpian sus brochas regularmente",
                           post_id: post_1.id,
                           user_id: us_16.id)
comment_3 = Comment.create(content: "a mi me paso se me lleno la cara de sarpullidos y me picaban mucho, asi que a limpiar un saludo.",
                           post_id: post_1.id,
                           user_id: us_17.id)
comment_4 = Comment.create(content: "como es mejor manera de visitar el kremlin, esta abierto todos los dias???",
                           post_id: post_2.id,
                           user_id: us_8.id)
comment_5 = Comment.create(content: "Hola tengo que ir desde SVO hasta Arbat, llego 23.25 por lo que calculo que voy a salir mínimo a la medianoche. Como me conviene ir? Gracias!",
                           post_id: post_2.id,
                           user_id: us_6.id)
comment_6 = Comment.create(content: "Hola estamos pensando ir al Mundial, La tarjeta fan Id sirve para usar gratuitamente el Tren AeroExpress?",
                           post_id: post_2.id,
                           user_id: us_8.id)
comment_7 = Comment.create(content: "Perdonen la intromisión, pero opino que la gracia del croissant a parte de su textura y horneo, claro está, es precisamente el sublime sabor que le otorga una buena mantequilla. Quizás la manteca de cerdo sea muy beneficiosa para la masa, pero, para mí, el sabor...nada que ver.
Por esos mundosdedios, he dejado a medias más de uno por el regusto a manteca, tirando a ranciosa, que le he notado.
Y eso que la ensaïmada cuyo sabor nada tiene que ver con el croissant, me pirra con todita su manteca de cerdo.",
                           post_id: post_4.id,
                           user_id: us_9.id)
comment_8 = Comment.create(content: "¿Qué cantidad de masa sugieres para una baguette de 40 cm?",
                           post_id: post_3.id,
                           user_id: us_1.id)
comment_9 = Comment.create(content: "El único problema que tiene el Mago es que los tanques le hacen mucho counter",
                           post_id: post_5.id,
                           user_id: us_6.id)
comment_10 = Comment.create(content: "Pero no es nada mala como dices. Es bastante fastidiosa a menos de que tengas el counter",
                           post_id: post_5.id,
                           user_id: us_8.id)
comment_11 = Comment.create(content: "Hablas de que los tanques le hacen counter, pero cual sería su verdadero counter? yo noralmente lo freno con bola de fuego dando a la torre, al mago y algo más xS",
                           post_id: post_5.id,
                           user_id: us_2.id)
comment_12 = Comment.create(content: "Está disponible oficialmente a partir de hoy...
Pienso que está un poco fuerte, debería ser un poco más débil, aunque al parecer hay gente que no piensa lo mismo...",
                           post_id: post_6.id,
                           user_id: us_18.id)
comment_13 = Comment.create(content: "Perfecta para combinar con el minero",
                            post_id: post_7.id,
                            user_id: us_16.id)
comment_14 = Comment.create(content: "buen día, es bueno practicar spinnig 3 veces a la semana.. lograría adelgazar 3 kilos en 15 días???",
                            post_id: post_9.id,
                            user_id: us_17.id)
comment_15 = Comment.create(content: "llevo 2 semanas haciendo spinning y power fit 4 veces por semana y 45 minutos de spinning y 1 hora de powerfit, en spinning ningun problema, pero en power fit me tiritan los brazos luego de realizar repeticiones y con pesos demasiado bajos de lo que normalmente realizo ¿a que se debe? mido 159 y cuando empece pesaba 55 kg ya estoy en 53",
                            post_id: post_9.id,
                            user_id: us_11.id)
comment_16 = Comment.create(content: "Genial, puedes compartir el link?",
                            post_id: post_8.id,
                            user_id: us_17.id)

comment_17 = Comment.create(content: "I have 3 pairs of FKS's! Look Pivots are also the same! Best binding on the market",
post_id: post_17.id,
user_id: us_17.id)