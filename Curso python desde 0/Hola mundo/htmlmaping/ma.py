import folium
import webbrowser
mapa = folium.Map(location=[80, -100], zoom_start=6, tiles="OpenStreetMap")

fg = folium.FeatureGroup(name="My map")

for cordinates in range(5)[[34.5,29.5],[35.4,66.9]] :
    mapa.add_child(folium.Marker(location=cordinates, popup="Hola, soy un marcador", icon=folium.Icon(color='red')))

mapa.save("Map1.html")
webbrowser.open("Map1.html")
