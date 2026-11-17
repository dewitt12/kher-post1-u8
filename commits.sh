#!/bin/bash
# Ejecutar desde la raíz del repo (apellido-post1-u8). Reemplaza [usuario].
set -e
git init -b main 2>/dev/null || true
# ---- Parte 1 ----
git add .gitignore catalogo-jpa/pom.xml catalogo-jpa/src/main/resources/application.properties catalogo-jpa/src/main/java/com/universidad/catalogo/CatalogoApplication.java
git commit -m "feat: proyecto Spring Boot con JPA, MySQL Driver y configuracion de base de datos (parte 1)"
git add catalogo-jpa/src/main/java/com/universidad/catalogo/model/Categoria.java catalogo-jpa/src/main/java/com/universidad/catalogo/repository/CategoriaRepository.java
git commit -m "feat: entidad Categoria y CategoriaRepository con JPA (parte 1)"
git add catalogo-jpa/src/main/java/com/universidad/catalogo/service/CategoriaService.java
git commit -m "feat: CategoriaService con validacion de nombre unico (parte 1)"
git add catalogo-jpa/src/main/java/com/universidad/catalogo/controller/CategoriaController.java catalogo-jpa/src/main/resources/templates/categorias
git commit -m "feat: CategoriaController y plantillas Thymeleaf CRUD (parte 1)"
git remote add origin https://github.com/[usuario]/apellido-post1-u8.git
git push -u origin main
# ---- Parte 2 ----
git add catalogo-jpa/src/main/java/com/universidad/catalogo/model/Producto.java
git commit -m "feat: entidad Producto y relacion ManyToOne/OneToMany con Categoria (parte 2)"
git add catalogo-jpa/src/main/java/com/universidad/catalogo/repository/ProductoRepository.java
git commit -m "feat: ProductoRepository con consulta JPQL personalizada y JOIN FETCH (parte 2)"
git add catalogo-jpa/src
git commit -m "feat: ProductoService, ProductoController y plantillas con filtro por precio (parte 2)"
git add README.md docker-compose.yml capturas commits.sh
git commit -m "docs: README final con resumen de ambas partes y decisiones de diseño"
git push origin main
