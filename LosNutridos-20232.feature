Feature: US01: Registro de usuario en la aplicación

    Como usuario 
    quiero poder registrarme 
    para tener una cuenta en la aplicación

    Scenario: Acceso a la página de registro

    Dado que el <usuario> se encuentra en la pantalla principal de ProductInfo
    Cuando el <usuario> vea la pantalla <Iniciar sesion>
    Y el usuario presione el botón <crear cuenta>
    Entonces la aplicación mostrará <pagina de registro de nuevo usuario>
    
    Examples: Datos de entrada
        | usuario |
        | Juanjo2004 |

    Scenario: Registro de nuevo usuario con datos válidos

    Dado que el <usuario> se encuentra en la <pagina de registro> de <ProductInfo>
    Cuando el <usuario> ingrese los datos requeridos por la página correctamente <nombre de usuario>, <correo personal>, <contrasenha> y <repetir contrasenha>
    Y el <usuario> presione el botón de <Comenzar a utilizar ProductInfo>
    Entonces la cuenta será registrada satisfactoriamente
    Y la aplicación redireccionará al usuario a la <pagina principal>

    Examples: Datos de entrada
        | nombre de usuario | correo personal | contrasenha | repetir contrasenha |
        | Juanjo2004  | Juanjo2004@gmail.com | 1234567@115 | 1234567@115 |

    Scenario: Registro de nuevo usuario con datos inválidos
    
    Dado que el <usuario> se encuentra en la <pagina de registro> <ProductInfo>
    Cuando el <usuario> ingrese los datos requeridos por la página incorrectamente <nombre de usuario>, <correo personal>, <contrasenha> y <repetir contrasenha>
    Y el <usuario> presione el botón de <Comenzar a utilizar ProductInfo>
    Entonces la cuenta no será registrada satisfactoriamente
    Y la aplicación eliminará los datos incorrectos ingresados
    Entonces la aplicación mostrará un <mensaje> de "Error" resaltando los <datos invalidos> en las <casillas correspondientes>

    Examples: Datos de entrada
        | nombre de usuario | correo personal | contrasenha | repetir contrasenha |
        | Juanjo2004  | Juanjo2004@gmail.com | 1234567@115 | 1234567@115 |

    Examples: Datos de salida
        | mensaje |
        | Error, ingrese los datos correctamente  |

Feature: US02: Acceso seguro desde múltiples dispositivos.

    Como usuario,
    quiero poder acceder a la aplicación de manera segura para garantizar
    una comodidad y certeza adecuada

    Scenario: Iniciar sesión en la aplicación desde un dispositivo anteriormente logueado
    
    Cuando el <usuario> intenta <iniciar sesion> desde un nuevo dispositivo
    Entonces se le solicitará una autenticación adicional, como un <codigo de verificacion> enviado al <correo electrnico> o <numero de telefono> del <usuario>
    Entonces una vez verificado, se le permitirá acceso al servicio de la aplicación

    Examples: Datos de entrada
        | usuario |
        | Juanjo2004 |

    Examples: Datos de salida
        | codigo de verificacion |
        | 1234567 |

    Scenario: Iniciar sesión en la aplicación desde un dispositivo nuevo
    Cuando el <usuario> intente <iniciar sesion> desde nuevo dispositivo
    Entonces se le solicitará la <informacion de inicio de sesion>, como el <nombre de usuario> y <contrasenha>
    Y luego de proporcionar la información correcta, se le permite acceder los servicios de la aplicación
    Entonces se le envía una <notificacion> por <correo> o <mensaje de texto> a su dispositivo con un informe de un nuevo <inicio de sesion>
    
    Examples: Datos de entrada
        | usuario |
        | Juanjo2004 |

    Examples: Datos de salida
        | codigo de verificacion |
        | 1234567 |


Feature: US04: Escaneo de productos alimenticios

    Como usuario 
    deseo poder escanear los códigos QR de los productos alimenticios 
    para verificar su información nutricional

    Scenario: Escanear un producto
    Dado que el <usuario> se encuentra logueado en la <aplicacion>
    Y el <usuario> se encuentra en la pestaña de <Escanear productos>
    Entonces aplicación encenderá la <camara del dispositivo del usuario> y mostrará un <interfaz de escaneo>

    Examples: Datos de salida
        | interfaz de escaneo |
        | Presione el boton para escanear |

    Scenario: Verificar la informacion nutricional de un producto
    Dado que el <usuario> escaneó un <producto compatible>
    Cuando el <usuario> presione en el botón de <Informacion nutricional>
    Entonces el <usuario> podrá verificar la <informacion> que el <producto escaneado> posee

    Examples: Datos de entrada
        | interfaz de escaneo |
        | Presione el boton para escanear |

    Examples: Datos de salida
        | Informacion nutricional |
        | mensaje de nutricion detallada |

Feature: US10: Acceso a la lista de productos favoritos

    Como usuario 
    quiero tener la capacidad de crear y acceder a una lista de productos favoritos 
    para guardar y organizar los productos que me gustan 
    o planeo comprar en el futuro de manera conveniente

    Scenario: Acceso a la lista de productos favoritos
    Dado que el <usuario> se encuentra logueado en la aplicación
    Y el <usuario> se encuentra en la pestaña de <Catalogo de productos>
    Cuando el <usuario> presione el botón de <Favoritos>
    Entonces el <usuario> podrá verificar una <lista de productos favoritos>

    Examples: Datos de entrada
        | Boton | Boton |
        | catálogo de productos | Favoritos |

    Examples: Datos de salida
        | Productos favoritos |
        | productos favoritos |

Feature: US03: Acceso a un catálogo de información de productos

    Como usuario 
    quiero tener la capacidad de acceder a un catálogo de productos 
    para mantenerme informado incluso si no realizo compras

    Scenario: Ingreso al catálogo
    Dado que el <usuario> se encuentra logueado en la aplicación
    Cuando el <usuario> presione el botón de <Catalogo de productos>
    Entonces el <usuario> será redirigido a la <pestanha de catalogo de productos>
    Y el <usuario> podrá verificar la <informacion de los productos>

    Examples: Datos de entrada
        | Boton |
        | catálogo de productos |

    Examples: Datos de salida
        | Catálogo de productos |
        | productos |

Feature: US15: Interfaz amigable y simple

    Como usuario 
    quiero que ProductInfo tenga una interfaz simple y amigable 
    para evitar confusiones al navegar

    Scenario: Experiencia visual amigable
    Dado que el <usuario> se encuentra logueado en la aplicación
    Cuando el <usuario> navegue por cualquier parte de la aplicación <ProductInfo>
    Entonces el <usuario> podrá navegar sin confusión alguna, disfrutando de una paleta de colores simple y amigable (Índigo, turquesa, azul marino y blanco) con un diseño moderno en todas las plataformas soportadas

    Examples: Datos de salida
        | Paleta de colores simple y amigable |
        | colores de la aplicacion |

Feature: US09: Acceso al historial de productos escaneados

    Como usuario 
    deseo poder acceder fácilmente a un historial de los productos que he escaneado previamente
    para llevar un registro de mis compras pasadas 
    y verificar la calidad de los productos que he adquirido

    Scenario: Acceso al historial de productos escaneados
    Dado que el <usuario> se encuentra logueado en la aplicación
    Y el <usuario> se encuentra en la pestaña de <Escanear productos>
    Cuando el <usuario> presione el botón de <Historial de escaneo>
    Entonces el <usuario> podrá verificar la el <historial completo de productos escaneados> con anterioridad

    Examples: Datos de entrada
        | interfaz de escaneo |
        | Presione el boton para escanear |

    Examples: Datos de salida
        | Historial completo de productos escaneados |
        | historial de productos escaneados |