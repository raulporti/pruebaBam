<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clientes extends Model
{
    protected $table = 'te_clientes';
    protected $fillable = [
        'cli_codigo_cliente',
        'cli_nombre1',
        'cli_nombre2',
        'cli_apellido1',
        'cli_apellido2',
        'cli_apellido_casada',
        'cli_direccion',
        'cli_telefono1',
        'cli_telefono2',
        'cli_identificacion',
        'cli_fecha'
    ];
    public $timestamps = false;
    use HasFactory;
}
