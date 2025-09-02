<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('messages', function (Blueprint $table) {
            // Hapus FK lama
            $table->dropForeign(['from_user_id']);
            $table->dropForeign(['to_user_id']);

            // Tambah FK baru dengan cascade
            $table->foreign('from_user_id')
                  ->references('id')->on('users')
                  ->onDelete('cascade');

            $table->foreign('to_user_id')
                  ->references('id')->on('users')
                  ->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::table('messages', function (Blueprint $table) {
            $table->dropForeign(['from_user_id']);
            $table->dropForeign(['to_user_id']);
        });
    }
};
