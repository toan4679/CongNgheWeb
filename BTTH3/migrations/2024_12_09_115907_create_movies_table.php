<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->integer('id')->primary();
            $table->string('title'); 
            $table->string('director'); 
            $table->date('release_date'); 
            $table->integer('duration'); 
            $table->integer('cinema_id'); 
            $table->timestamps();

            $table->foreign('cinema_id')->references('id')->on('cinemas'); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('movies');
    }
};
