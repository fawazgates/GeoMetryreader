import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Kolom(gambar1: "gambar", gambar2: "gambar2", gambar3: "gambar3")
                Kolom(gambar1: "gambar", gambar2: "gambar2", gambar3: "gambar3")
                Text ("Galeri saya").background(Color.orange)
            }
            .navigationTitle("Galeri")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Kolom : View {
    var gambar1, gambar2, gambar3 : String
    var body: some View {
        GeometryReader {
            geo in
            HStack {
                Image(self.gambar1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.gambar2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.gambar3)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
            }
        }
    }
}

