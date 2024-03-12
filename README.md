# Pembelian Tiket Film Online

Program ini merupakan simulasi pembelian tiket film online menggunakan Dart dengan penerapan konsep OOP (Object-Oriented Programming) dan asyncronous.

## Implementasi OOP
1. **Movie**: Class ini digunakan untuk merepresentasikan informasi mengenai film, termasuk judul dan harga tiket.
2. **Ticket**: Class ini merepresentasikan tiket yang dibeli, dengan informasi film yang dipilih dan jumlah tiket yang dipesan.
3. **Buyer**: Class ini merepresentasikan pembeli, dengan kemampuan untuk memesan tiket.

## Implementasi Asyncronous
Pada method `bookTicket` dalam class `Buyer`, terdapat penggunaan `async` dan `await` untuk menangani proses pemesanan tiket secara asinkron. Penggunaan `await Future.delayed(Duration(seconds: 3))` disimulasikan sebagai proses pembelian tiket yang memerlukan waktu beberapa detik.
