<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePartytransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('partytransactions', function (Blueprint $table) {
            $table->id();
            $table->date('transaction_at');
            $table->string('warehouse_code');
            $table->string('party_code');
            $table->string('relation');
            $table->decimal('credit', 10,2);
            $table->decimal('debit', 10,2);
            $table->string('transaction_method');
            $table->decimal('remission', 10,2);
            $table->decimal('comission', 10,2);
            $table->longText('remark')->nullable();
            $table->string('paid_by')->nullable();
            $table->string('status');
            $table->softDeletes('deleted_at');
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
        Schema::dropIfExists('partytransactions');
    }
}
