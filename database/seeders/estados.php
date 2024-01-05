<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class estados extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //DB::table('estados')-truncate();  //Eliminar datos
            $estados = [

            ['estados' => 'Amanzonas'],
            ['estados' => 'Anzoátegui'],
            ['estados' => 'Apure'],
            ['estados' => 'Aragua'],
            ['estados' => 'Barinas'],
            ['estados' => 'Bolívar'],
            ['estados' => 'Carabobo'],
            ['estados' => 'Cojedes'],
            ['estados' => 'Delta Amacuro'],
            ['estados' => 'Distrito Capital'],
            ['estados' => 'Falcón'],
            ['estados' => 'Guárico'],
            ['estados' => 'Lara'],
            ['estados' => 'Mérida'],
            ['estados' => 'Miranda'],
            ['estados' => 'Monagas'],
            ['estados' => 'Nueva Esparta'],
            ['estados' => 'Portuguesa'],
            ['estados' => 'Sucre'],
            ['estados' => 'Táchira'],
            ['estados' => 'Trujillo'],
            ['estados' => 'Vargas'],
            ['estados' => 'Yaracuy'],
            ['estados' => 'Zulia']
            ];

        DB::table('estados')->insert($estados);


    }
}
