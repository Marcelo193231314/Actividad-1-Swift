import SwiftUI

struct ContentView: View {
    @State private var mostrarAlerta = false

    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 15) {
                Image("cristiano_ronaldo")
                    .resizable().scaledToFill()
                    .frame(width: 90, height: 90).clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text("Alvaro Marcelo Silva Amaro").font(.headline).bold()
                    Text("Ingeniería en Software").font(.subheadline).foregroundStyle(.secondary)
                    Text("Estudiante de IDS y fan de los deportes SIUUUU").font(.caption)
                }
            }

            VStack(alignment: .leading, spacing: 6) {
                Text("Mis intereses:").font(.headline)
                Text("Fútbol, Videojuegos y Inteligencia Artificial")
            }
            .padding().frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(.systemGray6)).cornerRadius(10)

            Spacer()

            Button("Conóceme") { mostrarAlerta = true }
                .font(.headline).frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundColor(.white).cornerRadius(12)
        }
        .padding()
        .alert("¡Bienvenido!", isPresented: $mostrarAlerta) { } message: {
            Text("¡SIUUU! Gracias por visitar mi perfil")
        }
    }
}

#Preview { ContentView() }
