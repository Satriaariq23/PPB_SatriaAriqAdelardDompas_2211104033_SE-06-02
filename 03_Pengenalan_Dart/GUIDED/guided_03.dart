void main() {
  // DEKLARASI VARIABLE
  String firstName = "Praktikum"; // Variable dengan Type Annotation
  var lastName = "PBB"; // Variable dengan Var
  final cuaca = "cerah"; // Variable dengan final

  // MELIHAT OUTPUT
  print("Hari ini $firstName $lastName");

  // IF ELSE STATEMENT
  var open = 8;
  var close = 17;
  var now = 10;

  if (now >= open && now < close) {
    print("Toko Buka");
  } else if (now == 12) {
    print("Toko sedang istirahat");
  } else {
    print("Toko Tutup");
  }

  // TERNARY OPRATOR
  var toko = now > open ? "Toko Buka" : "Toko Tutup";
  print(toko);

  // SWITCH CASE STATMENT
  var nilai = "b";
  switch (nilai) {
    case "a":
      print("Nilai sangat bagus");
      break;
    case "b":
      print("Nilai bagus");
      break;
    case "c":
      print("Nilai cukup");
      break;
    default:
      print("Nilai tidak tersedia");
  }

  // FOR LOOP
  for (var i = 0; i <= 5; i++) {
    print(i);
  }

  // WHILE LOOP
  var i = 0;
  while (i <= 5) {
    print("print: $i");
    i++;
  }

  // LIST
  List<int> fixesList = List.filled(3, 0); // Fixed Length List
  fixesList[0] = 10;
  fixesList[1] = 20;
  fixesList[2] = 30;
  print("Fixed Length List: $fixesList");
  fixesList.removeAt(30);
  print("After removing element at index 30: $fixesList");

  List<int> growableList = []; // Growable List
  growableList.add(10);
  growableList.add(20);
  growableList.add(30);
  print("Growable List: $growableList");
  growableList.add(50);
  growableList.add(60);
  growableList.add(70);
  print(growableList);
}

// FUNGSI
// Mendefenisikan Fungsi
void cetakPesan(String pesan) {
  print(pesan);
}

// Mengembalikan Nilai
int perkalian(int a, int b) {
  return a * b;
}

// Menambahkan Parameter
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}

// Memanggil Fungsi
void mainfunction() {
  int hasil = perkalian(5, 4);
  print("Hasil perkalian fungsi: $hasil");

  cetakPesan("Halo, Guys!");
  greet('Satria', 20);
}
