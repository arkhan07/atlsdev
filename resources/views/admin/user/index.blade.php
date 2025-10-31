@extends('layouts.admin')
@section('title', ucwords($type) . ' ' . get_phrase('lists'))
@section('admin_layout')

    <div class="ol-card radius-8px">
        <div class="ol-card-body my-2 py-12px px-20px">
            <div class="d-flex align-items-center justify-content-between gap-3 flex-wrap flex-md-nowrap">
                <h4 class="title fs-16px">
                    <i class="fi-rr-settings-sliders me-2"></i>
                    {{ ucwords($type) . ' ' . get_phrase('lists') }}
                </h4>

                <a href="{{ route('admin.user', ['type' => $type, 'action' => 'add']) }}" class="btn ol-btn-outline-secondary d-flex align-items-center cg-10px">
                    <span class="fi-rr-plus"></span>
                    <span> {{ get_phrase('Add New' . ' ' . $type) }} </span>
                </a>
            </div>
        </div>
    </div>

    <!-- Filter Section -->
    <div class="ol-card mt-3">
        <div class="ol-card-body p-3">
            <form method="GET" action="{{ route('admin.user', ['type' => $type, 'action' => 'all']) }}" class="row g-3">
                <div class="col-md-3">
                    <select name="status" class="ol-select2" data-minimum-results-for-search="Infinity" onchange="this.form.submit()">
                        <option value="">{{get_phrase('All Status')}}</option>
                        <option value="1" {{ request('status') === '1' ? 'selected' : '' }}>
                            {{ get_phrase('Active') }}
                        </option>
                        <option value="2" {{ request('status') === '2' ? 'selected' : '' }}>
                            {{ get_phrase('Inactive') }}
                        </option>
                        <option value="0" {{ request('status') === '0' ? 'selected' : '' }}>
                            {{ get_phrase('Blocked') }}
                        </option>
                    </select>
                </div>
                <div class="col-md-7">
                    <input type="text" name="search" class="form-control ol-form-control"
                           placeholder="{{get_phrase('Search by name, email, or phone...')}}"
                           value="{{ request('search') }}">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn ol-btn-primary">{{get_phrase('Filter')}}</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Users Table -->
    <div class="ol-card mt-3">
        <div class="ol-card-body p-3">
            @if(count($users) > 0)
                <table id="datatable" class="table nowrap w-100">
                    <thead>
                        <tr>
                            <th> {{ get_phrase('#') }} </th>
                            <th> {{ get_phrase('Image') }} </th>
                            <th> {{ get_phrase('Name') }} </th>
                            <th> {{ get_phrase('Email') }} </th>
                            <th> {{ get_phrase('Status') }} </th>
                            <th> {{ get_phrase('Action') }} </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <td> {{ $loop->iteration + ($users->currentPage() - 1) * $users->perPage() }} </td>
                                <td> <img src="{{ get_user_image('users/' . $user->image) }}" class="rounded" height="50px" width="50px" alt=""></td>
                                <td> {{ $user->name }} </td>
                                <td> {{ $user->email }} </td>
                                <td>
                                    @if ($user->status == 1)
                                        <span class="badge bg-success">{{ get_phrase('Active') }}</span>
                                    @elseif($user->status == 2)
                                        <span class="badge bg-warning">{{ get_phrase('Inactive') }}</span>
                                    @else
                                       <span class="badge bg-danger"> {{ get_phrase('Blocked') }}</span>
                                    @endif
                                </td>
                                <td>
                                    <div class="dropdown ol-icon-dropdown">
                                        <button class="px-2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <span class="fi-rr-menu-dots-vertical"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item fs-14px" href="{{ route('admin.edit.user', ['type' => $user->type, 'id' => $user->id]) }}"> {{ get_phrase('Edit User') }} </a></li>
                                            <li><a class="dropdown-item fs-14px" onclick="delete_modal('{{ route('admin.delete.user', ['id' => $user->id]) }}')" href="javascript:void(0);"> {{ get_phrase('Delete') }} </a></a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @else
                @include('layouts.no_data_found')
            @endif

            <!-- Pagination -->
            @if(count($users) > 0)
            <div class="d-flex justify-content-center mt-4">
                {{ $users->withQueryString()->links() }}
            </div>
            @endif
        </div>
    </div>


@endsection
