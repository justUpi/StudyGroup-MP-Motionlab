import 'dart:io';

class total {
  int amout;
  total(this.amout);
}

void main() {
  total balance = total(0);
  void checkBalance(total saldo) =>
      print("Sisa saldo saat ini adalah ${saldo.amout}");
  void depositBalance(total saldo, int setor) => saldo.amout += setor;
  void withdrawBalance(total saldo, int tarikTunai) {
    if (saldo.amout - tarikTunai >= 0) {
      saldo.amout -= tarikTunai;
    } else {
      print("Saldo Tidak Mencukupi!");
    }
  }

  final Function() br = () => print('==============================');
  final Function() menu = () {
    br();
    print(
        'Selamat Datang di Aplikasi Bank, Silahkan pilih menu \n 1. Info Saldo\n 2. Setor Tunai\n 3. Tarik Tunai\n 0. Keluar');
    br();
    stdout.write('Pilih menu: ');
  };

  final Function() endProgram = () => print('Thank you!');

  menu();
  String? switchMenu = stdin.readLineSync();
  while (switchMenu != '0') {
    switch (switchMenu) {
      case '1':
        checkBalance(balance);
        if (balance.amout == 0) {
          print('Saldo Anda Habis, Coba untuk Stor Tunai terlebih dahulu');
        }
        br();
      case '2':
        stdout.write('Masukan jumlah uang yang ingin di Setor: ');
        int deposit = int.parse(stdin.readLineSync()!);
        depositBalance(balance, deposit);
        br();
      case '3':
        stdout.write('Masukan jumlah uang yang ingin di tarik: ');
        int withDraw = int.parse(stdin.readLineSync()!);
        withdrawBalance(balance, withDraw);
        br();
      default:
        final Function() switchMenuErr =
            () => print('Tolong masukan menu yang valid!');
        switchMenuErr();
        br();
    }
    menu();
    switchMenu = stdin.readLineSync();
  }
  endProgram();
}
