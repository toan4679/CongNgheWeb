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
        Schema::create('laptops', function (Blueprint $table) {
            $table->integer('id')->primary(); 
            $table->string('brand'); 
            $table->string('model'); 
            $table->string('specifications'); 
            $table->boolean('rental_status'); 
            $table->integer('renter_id'); 
            $table->timestamps();
            $table->foreign('renter_id')->references('id')->on('renters');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('laptops');
    }
};
