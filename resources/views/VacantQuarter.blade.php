@extends('layouts.datatable')
@section('SideNavbar')
  
    @include('layout.dashbord_sidebar')
      
@endsection
@section('DataTable')
  
    @include('layout.vacantquarter_datatable_content')
      
@endsection