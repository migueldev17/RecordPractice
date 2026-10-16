# ⚡ Ruby & Rails Engineering Roadmap (`RecordPractice`)

Repositorio de alta especialización dedicado al dominio avanzado de la infraestructura de **Ruby**, patrones funcionales y arquitectura **MVC (Model-View-Controller)** enfocado al desarrollo de aplicaciones ecosistémicas en **Ruby on Rails**.

---

## 📁 Estructura General del Proyecto

* **`Ejercicio/`** 📘: Conceptos estructurales y patrones de diseño base.
* **`Prueba/`** 🧪: Retos de código de lógica autónoma.
* **`RUBYESPECIAL/`** 🔥: Núcleo de alta ingeniería (Colecciones avanzadas, concurrencia y programación funcional).

---

## 🗺️ Bitácora y Hoja de Ruta de Ingeniería

### 📌 Fase 1: Fundamentos Avanzados de POO (Completado)
- [x] **Prueba 1**: Modularidad básica, inicializadores e instancias independientes.
- [x] **Prueba 2**: Encapsulamiento estricto y abstracción de mutación de datos (`attr_...`).
- [x] **Prueba 3**: Herencia jerárquica y algoritmos de control de estado interno.
- [x] **Prueba 4**: Polimorfismo puro y sobrescritura dinámica de métodos.

---

### 🚀 Fase 2: `RUBYESPECIAL` (Estructuras de Datos & Programación Funcional)

#### 📂 `01_Colecciones/` (Estructuras y Gestión de Memoria)
- [ ] **Bloque 1: Estructuras Lineales Nativas** (`Array`, `String` secuencial, `Queue`, `SizedQueue`, Pila LIFO vía `Array`).
- [ ] **Bloque 2: Estructuras Bidimensionales y Álgebra** (`Matrix`, `Vector`, Arrays anidados multidimensionales).
- [ ] **Bloque 3: Estructuras de Asociación y Conjuntos** (`Hash` nativo, `Set` matemático, `SortedSet`).
- [ ] **Bloque 4: Enumerables y Secuencias Generativas** (`Range`, `Enumerator` de flujos, `Enumerator::Lazy`).
- [ ] **Bloque 5: Estructuras Compuestas y Modelado** (`Struct`, `OpenStruct`, `Data` inmutable).
- [ ] **Bloque 6: Concurrencia y Paralelismo Thread-Safe** (`Concurrent::Array`, `Concurrent::Hash`, `Concurrent::Map`, `Thread::Queue`).
- [ ] **Bloque 7: Grafos y Árboles Avanzados** (`RGL::AdjacencyGraph`, `Trie` de prefijos, `B-Tree / Red-Black Tree`).
- [ ] **Bloque 8: Colecciones Avanzadas de Frameworks (Rails)** (`ActiveRecord::Relation`, `ActionController::Parameters`, `ActiveSupport::HashWithIndifferentAccess`).
- [ ] **Bloque 9: Bajo Nivel y Gestión de Memoria** (`Fiddle::Pointer` a C, `ObjectSpace` en VM).

#### 📂 `02_Programacion_Funcional/` (Clausuras y Flujos Puros)
- [ ] **Bloque 1: Clausuras Nativas y Bloques** (`Blocks`, `Yield` de control, `block_given?`).
- [ ] **Bloque 2: Objetos Ejecutables (Callables)** (`Proc`, `Lambda` de retorno local, `Method`, `UnboundMethod`).
- [ ] **Bloque 3: Inyección y Composición de Bloques** (Operador `&`, `Symbol#to_proc`, `Currying`).
- [ ] **Bloque 4: Inmutabilidad y Estado Puro** (`Object#freeze`, `Pure Functions`, `Pattern Matching` con `case...in`).
- [ ] **Bloque 5: Patrones Avanzados y Arquitectura Senior** (`Dry::Monads`, `Proc Composition` `>>`/`<<`, `Memoization` `||=`).
- [ ] **Bloque 6: Optimización de Memoria y Recursión** (`Tail Call Optimization` en YJIT, `Lazy Evaluation`).

---

### 🌐 Fase 3: Arquitectura MVC & Ecosistema Rails (Próximamente)
- [ ] **Simulación MVC en Ruby Puro** (Aislamiento de responsabilidades: `Model`, `View`, `Controller`).
- [ ] **Instalación y Configuración del Entorno Rails** (Gestores de versiones `rbenv`/`asdf`, `Bundler`, `Gemfile`).
- [ ] **Desarrollo de Aplicaciones Web Monolíticas** (Ecosistema completo con bases de datos relacionales).

---

## ⚙️ Guía de Ejecución Técnica

Para correr y validar de forma aislada los módulos de ingeniería avanzados:

```bash
# Ejecutar módulos del bloque lineal de colecciones avanzadas
ruby RUBYESPECIAL/01_Colecciones/01_lineales.rb
```
