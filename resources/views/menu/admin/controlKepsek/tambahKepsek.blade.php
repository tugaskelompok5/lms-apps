@extends('layout.template.mainTemplate')

@section('container')
    @if (Auth()->user()->roles_id == 1)
        @include('menu.admin.adminHelper')
    @endif

    <div class="col-12 ps-4 pe-4 mb-4">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb bg-white">
                <li class="breadcrumb-item"><a href="{{ route('viewPengajar') }}">Data Kepala Sekolah</a></li>
                <li class="breadcrumb-item active" aria-current="page">Tambah Kepala Sekolah</li>
            </ol>
        </nav>
    </div>

    <div class="ps-4 pe-4 mt-4 pt-4">
        <h2 class="display-6 fw-bold">
            <a href="{{ route('viewKepsek') }}">
                <button type="button" class="btn btn-outline-secondary rounded-circle">
                    <i class="fa-solid fa-arrow-left"></i>
                </button>
            </a>
            Tambah Kepala Sekolah
        </h2>

        <nav style="" aria-label="breadcrumb">
            <ol class="breadcrumb bg-light">
                <li class="breadcrumb-item text-info">Step 1</li>
            </ol>
        </nav>
    </div>

    <div class="">
        <div class="ps-4 pe-4">
            <div class="row">
                <div class="col-12 col-lg-12">
                    <div class="p-4">
                        <h4 class="fw-bold text-primary"><i class="fa-solid fa-pen"></i> Data Kepala Sekolah</h4>
                        <form action="{{ route('validateDataKepsek') }}" method="POST">
                            @csrf
                            <div class="bg-white rounded-2 p-4">
                                {{-- Nama --}}
                                <div class="mb-3">
                                    <label for="nama" class="form-label">Nama : </label>
                                    <input type="text" class="form-control" id="nama" name="nama"
                                        placeholder="Aditya Kesuma, S.H, M.Kom" value="{{ old('nama') }}" required>
                                    @error('nama')
                                        <div class="text-danger small">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                {{-- Email --}}
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email : </label>
                                    <input type="text" class="form-control" id="email" name="email"
                                        placeholder="email@gmail.com" value="{{ old('email') }}" required>
                                    @error('email')
                                        <div class="text-danger small">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                {{-- Nomor Telepon --}}
                                <div class="mb-3">
                                    <label for="noTelp" class="form-label">Nomor Telepon
                                        <span class="text-secondary small">(Optional)</span> : </label>
                                    <input type="number" class="form-control" id="noTelp" name="noTelp"
                                        placeholder="0851xxxxxxxx" value="{{ old('noTelp') }}">
                                    @error('noTelp')
                                        <div class="text-danger small">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <!-- NIK -->
                                <div class="mb-3">
                                    <label for="nik" class="form-label">NIK <span
                                            class="text-secondary small">(Optional)</span> : </label>
                                    <input type="number" class="form-control" id="nik" name="nik" placeholder=""
                                        value="{{ old('nik') }}">
                                    @error('nik')
                                        <div class="text-danger small">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>


                                {{-- Password --}}
                                <div class="mb-3">
                                    <div class="row">
                                        <div class="col-6 mb-3">
                                            <div class="form-group">
                                                <label for="password">Password
                                                    <span class="text-secondary small">(Min : 8)</span> :
                                                </label>
                                                <input class="form-control" id="password" name="password" type="password"
                                                    placeholder="****">
                                                @error('password')
                                                    <div class="text-danger small">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-6 mb-3">
                                            <div class="form-group">
                                                <label for="confirm-password">Confirm Password : </label>
                                                <input class="form-control" id="confirm-password" name="confirm-password"
                                                    type="password" placeholder="****">
                                                @error('confirm-password')
                                                    <div class="text-danger small">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>
                                        </div>
                                        <p class="small">Password di atas diisi oleh admin dan ditujukan kepada Kepala Sekolah.
                                            Setelahnya Kepala Sekolah dapat mengganti password mereka jika diperlukan.</p>
                                    </div>
                                </div>

                            </div>

                            <div class="">
                                <button type="submit" class="btn-lg btn btn-primary w-100">Simpan dan Lanjutkan</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
