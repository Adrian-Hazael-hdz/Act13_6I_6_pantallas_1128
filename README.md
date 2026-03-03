# Act13_6I_6_pantallas_1128
<img width="1331" height="699" alt="image" src="https://github.com/user-attachments/assets/8b3d175b-ec48-40c4-91ae-537ce56c5afa" />
<img width="1332" height="709" alt="image" src="https://github.com/user-attachments/assets/de0f8b13-122f-4047-ba49-4ab0e3d7a013" />
<img width="840" height="696" alt="image" src="https://github.com/user-attachments/assets/9040e2e7-ed8d-4ab0-8581-5b4b22ec263c" />
<img width="841" height="705" alt="image" src="https://github.com/user-attachments/assets/f63241b5-7c30-4005-86c8-a6fbc4ab43ec" />
<img width="844" height="705" alt="image" src="https://github.com/user-attachments/assets/fdcc63c1-8a04-4a14-ba50-b5d72cf35a14" />
<img width="1231" height="831" alt="image" src="https://github.com/user-attachments/assets/c1bab5a9-0552-47fb-949e-ecab6eaace75" />
<img width="1799" height="704" alt="image" src="https://github.com/user-attachments/assets/a92df73d-3eca-4852-bae2-f35778bde826" />

<img width="356" height="595" alt="image" src="https://github.com/user-attachments/assets/d1ecc650-bb53-4927-a274-f530d22a178e" />
<img width="378" height="584" alt="image" src="https://github.com/user-attachments/assets/b3d1fed9-a686-4b06-b093-8cf6b6e0640b" />
<img width="357" height="599" alt="image" src="https://github.com/user-attachments/assets/99648304-0626-41a7-b9e5-6fa2e736a607" />
<img width="359" height="594" alt="image" src="https://github.com/user-attachments/assets/ae2e6854-18c6-4bf9-bfd9-e00c659bf83d" />
<img width="357" height="586" alt="image" src="https://github.com/user-attachments/assets/87886224-74b5-4229-9581-9ef1e2401492" />
<img width="349" height="577" alt="image" src="https://github.com/user-attachments/assets/422b5e67-9b7d-4d34-b782-4f11e142c7e5" />


# prompt:
Lenguaje Dart Flutter Nivel Basico:
Crea una aplicación de E-commerce llamada 'PChop' que sea responsiva y siga fielmente una serie de bocetos manuales. La aplicación debe incluir 6 pantallas con las siguientes especificaciones técnicas:"

1. Configuración Global y Navegación
Estructura: Usa MaterialApp con rutas nombradas (named routes).

Menú Hamburguesa: Crea un Widget reutilizable llamado MenuLateral que aparezca a la derecha (endDrawer) en todas las pantallas (excepto Login). Debe contener enlaces a: Login, Bienvenida, Productos, Detalles, Carrito y Perfil.

Identidad: Todas las pantallas deben incluir el texto "Adrian Hernandez 6I" de forma visible pero discreta.

2. Especificaciones por Pantalla
Login: Centrado, con dos TextField estilo cápsula (bordes redondeados) y un botón StadiumBorder.

Bienvenida: Fondo morado claro (0xFFF3E5F5). Una cuadrícula de 2x2 mostrando productos destacados con imagen, nombre y precio. En Web, el contenido debe estar centrado con un maxWidth de 800px para evitar que las imágenes se vean gigantes.

Productos: Catálogo de 6 productos cargando imágenes desde URLs RAW de GitHub. Cada tarjeta debe ser clickeable. Incluye una barra inferior fija con dos botones: "Volver" (color rosa 0xFFF8BBD0) y "Check out" (color verde 0xFFC8E6C9) con el texto "Finalizar" debajo.

Carrito: Lista de 4 productos específicos (Monitor, Teclado, Audífonos, Mouse). Cada fila debe tener la imagen a la izquierda, nombre/precio al centro, y dos iconos debajo: un basurero rosa y un icono de información azul. Incluye los mismos botones inferiores que la pantalla de Productos.

Detalles: Muestra la imagen del producto, una descripción técnica y una sección de Reseñas que incluya estrellas y un comentario de texto real entre comillas.

Perfil: Título "Perfil" en la parte superior. Avatar circular seguido del nombre y correo en una fila horizontal. Dos botones anchos: "Editar Perfil" (azul claro) y "Cerrar Sesión" (rojo claro).

3. Reglas de Estilo y Responsive
Uso de Web: Aplica BoxConstraints y Center en los contenedores principales para que, al abrir la app en un navegador, las imágenes y listas mantengan una proporción elegante y no ocupen todo el ancho del monitor.

Manejo de Imágenes: Usa Image.network con BoxFit.cover y asegúrate de que los contenedores tengan bordes definidos o sombras (elevation).
