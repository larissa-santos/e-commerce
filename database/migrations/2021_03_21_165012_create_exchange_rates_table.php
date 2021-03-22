<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExchangeRatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exchange_rates', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedTinyInteger('from_currency_id')->constrained('currencies')->nullable(false);
            $table->unsignedTinyInteger('to_currency_id')->constrained('currencies')->nullable(false);
            $table->float('exchange_rate', 7, 2)->nullable(false);
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
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('exchange_rates');
        Schema::enableForeignKeyConstraints();
    }
}
