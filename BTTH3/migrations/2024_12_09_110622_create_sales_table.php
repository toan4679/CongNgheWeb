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
        Schema::create('sales', function (Blueprint $table) {
            $table->integer('sale_id')->primary(); 
            $table->Integer('medicine_id'); 
            $table->integer('quantity'); 
            $table->dateTime('sale_date'); 
            $table->string('customer_phone', 10)->nullable(); 
            $table->timestamps(); 

            $table->foreign('medicine_id')->references('medicine_id')->on('medicines');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sales');
    }
};
