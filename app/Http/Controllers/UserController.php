<?php

namespace App\Http\Controllers;

use App\Helpers\eKreative;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $listRole = Role::where('name', '!=', 'Super Admin')->get();

        return view('pages.user.index', compact('listRole'));
    }

    public function getDatatables()
    {
        $data = User::select([
            'users.id AS id',
            'users.name AS userName',
            'users.email AS userMail',
            'users.phone AS userPhone',
            'roles.name AS userRole'
        ])
            ->join('roles', 'users.roleId', '=', 'roles.id')
            ->where('roles.name', '!=', 'Super Admin')
            ->get();

        return DataTables::of($data)
            ->addIndexColumn()
            ->addColumn('userName', function ($data) {
                return $data->userName;
            })
            ->addColumn('userMail', function ($data) {
                return $data->userMail;
            })
            ->addColumn('userPhone', function ($data) {
                return $data->userPhone;
            })
            ->addColumn('userRole', function ($data) {
                return $data->userRole;
            })
            ->addColumn('actions', function ($data) {
                return '<button type="button" class="btn btn-success btn-xs" id="btnEdit" title="Edit" data-toggle="modal" data-target="#modalEdit" data-id="' . $data->id . '"><i class="fa fa-edit"></i></button>
                    <button type="button" class="btn btn-danger btn-xs" id="btnDelete" title="Delete" data-id="' . $data->id . '"><i class="fa fa-trash"></i></button>';
            })
            ->rawColumns(['actions'])
            ->make(true);
    }

    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            $request['createdBy'] = eKreative::myId();
            $request['updatedBy'] = eKreative::myId();
            $request['password'] = Hash::make($request->password);

            $result = User::create($request->all());

            DB::commit();
            return response()->json(['metaData' => ['code' => 200, 'message' => 'Data berhasil disimpan.'], 'response' => $result], 200);
        } catch (\Exception $e) {
            DB::rollback();
            return response()->json(['metaData' => ['code' => 500, 'message' => $e->getMessage()]], 200);
        }
    }

    public function edit($id)
    {
        $result = User::find($id);

        return response()->json(['metaData' => ['code' => 200, 'message' => ''], 'response' => $result], 200);
    }

    public function update($id, Request $request)
    {
        DB::beginTransaction();
        try {
            $result = User::find($id);
            $result->name = $request->name;
            $result->email = $request->email;
            $result->phone = $request->phone;
            if ($request->password != '') {
                $result->password = Hash::make($request->password);
            }
            $result->roleId = $request->roleId;
            $result->updatedBy = eKreative::myId();
            $result->save();

            DB::commit();
            return response()->json(['metaData' => ['code' => 200, 'message' => 'Data berhasil diupdate.'], 'response' => $result], 200);
        } catch (\Exception $e) {
            DB::rollback();
            return response()->json(['metaData' => ['code' => 500, 'message' => $e->getMessage()]], 200);
        }
    }

    public function destroy($id)
    {
        DB::beginTransaction();
        try {
            $result = User::find($id);
            $result->updatedBy = eKreative::myId();
            $result->delete();

            DB::commit();
            return response()->json(['metaData' => ['code' => 200, 'message' => 'Data berhasil dihapus.'], 'response' => $result], 200);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['metaData' => ['code' => 500, 'message' => $e->getMessage()]], 200);
        }
    }
}
