<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggaran extends Model {
	protected $table = "pelanggaran";
	protected $fillable = ["siswa_id", "keterangan"];
	public function siswa(){
		return $this->belongsTo('App\Siswa');
	}
}