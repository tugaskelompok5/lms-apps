<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('data_siswas', function (Blueprint $table) {
            $table->id();
            $table->string('name');

            // Relasi ke tabel kelas
            $table->foreignId('kelas_id')
                  ->constrained('kelas')       // sesuaikan nama tabel kelas kamu
                  ->onDelete('cascade');       // kalau kelas dihapus, siswa ikut kehapus

            // Relasi ke tabel users (akun siswa)
            $table->foreignId('user_id')
                  ->nullable()
                  ->constrained('users')       // relasi ke tabel users
                  ->onDelete('cascade');       // kalau siswa dihapus, user ikut kehapus

            $table->string('nis')->unique();   // biasanya NIS unik
            $table->boolean('punya_akun')->default(0);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_siswas');
    }
};
