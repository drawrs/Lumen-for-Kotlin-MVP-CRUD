<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Siswa;
use App\Pelanggaran;
class SiswaController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function inputSiswa(Request $request){
        //
        $siswa = Siswa::create($request->all());
        $status = false;
        $msg = "Gagal ditambahkan !";
        if ($siswa) {
            $status = true;
            $msg = "Berhasil ditambahkan!";
        }

        return response()->json(['status' => $status, 'msg' => $msg]);
    }
    public function getSiswa(Request $request){
        //
        $siswa = Siswa::orderBy('id', 'desc')->get();

        return response()->json(['data' => $siswa]);
    }
    public function deleteSiswa(Request $request){
        //
        $siswa = Siswa::find($request->input('id'));

        $status = false;
        $msg = "gagal di hapus";

        if($siswa->delete()){
            $status = true;
            $msg = "Berhasil di hapus";
        }
        return response()->json(compact('status','msg'));
    }
    public function updateSiswa(Request $request){
        //
        $id = $request->input('id');
        $siswa = Siswa::find($id);
        $update = $siswa->update(['nis' => $request->input('nis'), 'nama' => $request->input('nama')]);
        $msg = "Gagal diupdate !";
        if ($update) {
            $msg = "Berhasil diupdate!";
        }
        //?id=2&nama=aldo&nis=22222
        return response()->json(['status' => $update, 'msg' => $msg]);
    }
    
}
