<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRecepPrincipalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recep_principals', function (Blueprint $table) {
            $table->id();
            $table->dateTime('fecha');
            $table->string('empresa');
            $table->string('cliente');
            $table->string('Rubro');
            $table->string('peso');
            $table->integer('numguia');
            $table->string('numdespacho');
            $table->dateTime('fechallegada');
            $table->dateTime('fechadescarga');
            $table->string('datostrans');
            $table->string('chofer');
            $table->integer('cedula');
            $table->string('placas');
            $table->string('origen');
            $table->string('transporte');
            $table->string('destino');
            $table->string('kgrecibido');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('recep_principals');
    }
}
