# Carregar malha de predição do conjunto de dados do Rio Meuse e
# criar objeto espacial definindo as coordenadas e o sistemas de
# coordenadas de referência (veja mais informações sobre
# sistemas de coordenadas de referência em http://spatialreference.org/).
data(meuse.grid, package = "sp")
sp::gridded(meuse.grid) <- ~ x + y
sp::proj4string(meuse.grid) <- sp::CRS("+init=epsg:28992")

# Carregar polígono do Rio Meuse
data(meuse.riv, package = "sp")
main <- "Conjunto de dados do Rio Meuse"
