<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use StdClass;

class TestController extends Controller
{
    public function home(){
        return view('home');
    }
    public function DashBord(){
        return view('DashBord');
    }
    public function AddUser(){
        return view('AddUser');
    }
    public function AllUser(){
        return view('AllUser');
    }
    public function WaitingUser(){
        return view('WaitingUser');
    }
    public function ShiftingUser(){
        return view('ShiftingUser');
    }
    public function ShiftingAndWaitingUser(){
        return view('ShiftingAndWaitingUser');
    }
    public function AddQuarter(){
        return view('AddQuarter');
    }
    public function AllQuarter(){
        return view('AllQuarter');
    }
    public function VacantQuarter(){
        return view('VacantQuarter');
    }
    public function PriorityList(){
        return view('PriorityList');
    }
    public function OfferList(){
        return view('OfferList');
    }
    public function AllotmentLetter(){
        return view('AllotmentLetter');
    }

}

