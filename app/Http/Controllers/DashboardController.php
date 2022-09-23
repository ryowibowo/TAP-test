<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Actual;
use App\Models\Achievement;
use App\Models\Monitoring;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
class DashboardController extends Controller
{   
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    
    public function index(Request $request)
    {
        //actual vs bbc
        $percentage = 100;
        $getActual = DB::table('actuals')
            ->select(DB::raw('actual_vs_bbc'))
            ->value('actual_vs_bbc');

        $getBbc = $percentage - $getActual;

        $total = array(
            $getActual,
            $getBbc
        );
        $final = json_encode($total);
        // dd($final);

        //pencapaian
        $getCode = DB::table('achievements')
            ->select('afd_code')
            ->orderBy('afd_code', 'ASC')
            ->pluck('afd_code');

        $getValue = DB::table('achievements')
        ->select('actual_vs_bbc')
        ->orderBy('afd_code', 'ASC')
        ->pluck('actual_vs_bbc');
        
        $code = json_encode($getCode);
        $value = json_encode($getValue);

        //---end pencapaian---

        //---monitoring----//

        // $monitoring = Monitoring::orderBy('tgl', 'ASC')->get();
        // $getData = [];

        // foreach ($monitoring as $data) {
            
        //     $getData[] = array(
        //         // "tgl" => $data['tgl'],
        //         "data" => [
        //             $data['actual'],
        //             $data['target'],
        //             $data['bbc'],
        //             $data['avg_actual'],
        //         ],
        //     );
        // }
        // dd($getData);
        
        $getTgl = DB::table('monitoring')
            ->whereRaw('MOD(tgl, 2) = 1')
            ->orderBy('tgl', 'ASC')
            ->pluck('tgl');

        $getActual = DB::table('monitoring')
            ->whereRaw('MOD(tgl, 2) = 1')
            ->orderBy('tgl', 'ASC')
            ->pluck('actual');

        $getTarget = DB::table('monitoring')
            ->whereRaw('MOD(tgl, 2) = 1')
            ->orderBy('tgl', 'ASC')
            ->pluck('target');

        $getBbc = DB::table('monitoring')
            ->whereRaw('MOD(tgl, 2) = 1')
            ->orderBy('tgl', 'ASC')
            ->pluck('bbc');

        $getAvg = DB::table('monitoring')
            ->whereRaw('MOD(tgl, 2) = 1')
            ->orderBy('tgl', 'ASC')
            ->pluck('avg_actual');

        $dataTanggal = json_encode($getTgl);
        $dataActual = json_encode($getActual);
        $dataTarget = json_encode($getTarget);
        $dataBbc = json_encode($getBbc);
        $dataAvg = json_encode($getAvg);

    	return view('dashboard', compact('final', 'code', 'value','dataTanggal','dataActual', 'dataTarget',
            'dataBbc', 'dataAvg'
        ));
    }

    function action(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'select_file' => 'required'
            ]);
        if($validation->passes()){
            $kml= $request->file('select_file');
            $new_name = rand() . '.' . $kml->getClientOriginalExtension();
            $kml->move(public_path('kml'), $new_name);
            return response()->json([
            'message'   => 'File Uploaded Successfully',
            'uploaded_file' => "kml/$new_name",
            'class_name'  => 'alert-success'
            ]);
        }else{
            return response()->json([
            'message'   => $validation->errors()->all(),
            'uploaded_file' => '',
            'class_name'  => 'alert-danger'
            ]);
        }
    }

}
