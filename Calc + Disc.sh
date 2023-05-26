#!/bin/bash

echo "Selamat datang di Program Kasir!"
echo "------------------------------"

# Meminta input jumlah barang
read -p "Masukkan jumlah barang yang ingin dibeli: " jumlah_barang

# Inisialisasi variabel total_harga dan diskon
total_harga=0
diskon=0

# Loop untuk memasukkan harga setiap barang
for ((i=1; i<=jumlah_barang; i++))
do
    echo "Barang ke-$i:"
    read -p "  Nama barang  : " nama_barang
    read -p "  Harga barang : " harga_barang

    # Menghitung subtotal harga barang
    subtotal=$((harga_barang * 1))

    # Menambahkan subtotal ke total_harga
    total_harga=$((total_harga + subtotal))

    echo "Subtotal harga: $subtotal"
done

# Menghitung diskon berdasarkan total harga belanjaan
if [[ $total_harga -ge 500000 ]]; then
    diskon=$((total_harga / 10))
fi

# Mengurangi diskon dari total harga
total_harga=$((total_harga - diskon))

echo "------------------------------"
echo "Total harga belanjaan: $total_harga"
echo "Diskon yang diberikan: $diskon"
echo "Terima kasih telah berbelanja di toko kami!"
