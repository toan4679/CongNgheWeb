<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Computer;
use App\Models\Issues;

class IssuesController extends Controller
{

    public function index()
    {
        $issues = Issues::with('computer')->paginate(5);
        return view('issues.index', compact('issues'));
    }


    public function create()
    {
        $computers = Computer::all();
        return view('issues.create', compact('computers'));
    }


    public function store(Request $request)
    {
        $request->validate([
            'computer_id' => 'required|exists:computers,id',
            'reported_by' => 'required|max:255',
            'reported_date' => 'required|date',
            'description' => 'required',
            'urgency' => 'required',
            'status' => 'required',
        ]);

        Issues::create($request->all());

        return redirect()->route('issues.index')->with('success', 'Issue created successfully!');
    }

    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $issues = Issues::findOrFail($id);
        $computers = Computer::all();  
        return view('issues.edit', compact('issues', 'computers'));
    }


    public function update(Request $request, $id)
    {
        $request->validate([
            'computer_id' => 'required',
            'reported_by' => 'required|max:255',
            'reported_date' => 'required|date',
            'description' => 'required',
            'urgency' => 'required',
            'status' => 'required',
        ]);

        $issues = Issues::find($id);

        $issues->update($request->all());

        return redirect()->route('issues.index')->with('success', 'Vấn đề được cập nhật thành công');
    }


    public function destroy($id)
    {
        $issue = Issues::findOrFail($id);  
        $issue->delete();  

        return redirect()->route('issues.index')->with('success', 'Vấn đề đã được xóa thành công!');
    }
}
