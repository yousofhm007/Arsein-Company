<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->enum('slider', ['pic_1', 'pic_2', 'pic_1_2'])->nullable();
            $table->string('pram_1')->nullable();
            $table->string('pram_2')->nullable();
            $table->string('pram_3')->nullable();
            $table->string('pram_4')->nullable();
            $table->text('link_media')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('settings');
    }
};
