import 'dart:async';

// Class untuk mempresentasikan film
class Movie {
  String title;
  int price;
  Movie(this.title, this.price);
}

// Class untuk mempresentasikan tiket
class Ticket{
  Movie movie;
  int quantity;

  Ticket(this.movie, this.quantity);
}

// Class untuk  mempresentasikan pembeli
class Buyer{
  String name;
  Buyer(this.name);

  // Method untuk memesan tiket
  Future<void> bookTicket(Ticket ticket) async{
    print('$name memesan ${ticket.quantity} tiket untuk film ${ticket.movie.title}');
    await Future.delayed(Duration(seconds: 3)); // Simulasi waktu pemesanan
    print('$name berhasil memesan tiket untuk film ${ticket.movie.title}');
  }
}

// Function untuk membeli tiket secara asinkron
Future<void> buyTicket(Buyer buyer, Ticket ticket) async{
    await buyer.bookTicket(ticket);
}

void main(){
  // Inisialisasi Film
  var movie1 = Movie('Spiderman-Man : No Way Home', 50000);
  var movie2 = Movie('The Batman : Arkham Knight', 40000);
  var movie3 = Movie('Oppenheimer', 55000);

  // Inisialisasi Pembeli
  var buyer = Buyer('Alice');

  // Pembelian Tiket
  var ticket1 = Ticket(movie1, 2);
  var ticket2 = Ticket(movie2, 3);
  var ticket3 = Ticket(movie3, 1);

  // Proses pembelian tiket secara asinkron
  buyTicket(buyer, ticket1);
  buyTicket(buyer, ticket2);
  buyTicket(buyer, ticket3);


}

