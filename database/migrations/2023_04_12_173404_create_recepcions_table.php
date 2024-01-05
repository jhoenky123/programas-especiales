<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRecepcionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recepcions', function (Blueprint $table) {
            $table->id();
            $table->dateTime('fecha');
            $table->integer('codnotaentrega');
            $table->string('estado');
            $table->string('municipio');
            $table->string('parroquia');
            $table->string('nombreescuela');
            $table->integer('escodsunagro');
            $table->string('direccion');
            $table->string('nomprosocial');
            $table->string('noenterespon');
            $table->integer('numbeneficiario');
            $table->string('nomresponsable');
            $table->integer('codcedula1');
            $table->integer('numtelefono1');
            $table->string('cendisabastece');
            $table->dateTime('fechaultdespacho');
            $table->string('persrespdespacho');
            $table->integer('numtelefono2');
            $table->string('cargoretira');
            $table->integer('cantrecibido');
            $table->integer('pollo'); #proteina recibida por kilo
            $table->integer('carne');
            $table->integer('mortadela');
            $table->string('fruver');
            $table->integer('frutas'); #Cantidad de Frutas, Verduras Hortalizas (kilos-toneladas) Recibidos:
            $table->integer('verduras');
            $table->integer('hortalizas');
            $table->string('observaciones');
            $table->string('datos');
            $table->string('nomsumidatos');
            $table->integer('codcedula2');
            $table->string('cargosumi');
            $table->string('nomfuncinspec');
            $table->integer('codcedula3');
            $table->string('cargofuncio');
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
        Schema::dropIfExists('recepcions');
    }
}
