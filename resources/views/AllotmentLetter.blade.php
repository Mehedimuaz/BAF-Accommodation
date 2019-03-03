@extends('layouts.datatable')
@section('SideNavbar')
  
    @include('layout.dashbord_sidebar')
      
@endsection
@section('DataTable')
  
    @include('layout.allotment_list_datatable_content')
      
@endsection