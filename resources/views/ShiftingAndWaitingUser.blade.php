@extends('layouts.datatable')
@section('SideNavbar')
  
    @include('layout.dashbord_sidebar')
      
@endsection
@section('DataTable')
  
    @include('layout.Shifting_and_waiting_user_datatable_content')
      
@endsection