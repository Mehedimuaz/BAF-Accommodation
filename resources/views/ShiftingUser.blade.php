@extends('layouts.datatable')
@section('SideNavbar')
  
    @include('layout.dashbord_sidebar')
      
@endsection
@section('DataTable')
  
    @include('layout.shifting_user_datatable_content')
      
@endsection

    