import folium

mapa = folium.Map(location=[80, -100], zoom_start=6, tiles="OpenStreetMap")

fg = folium.FeatureGroup(name="My map")
mapa.add_child(folium.Marker(location=[38.2, -99.1], popup="Hola, soy un marcador", icon=folium.Icon(color='red')))

mapa.save("Map1.html")
