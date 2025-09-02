@extends('layout.template.loginRegistTemplate')
@section('container')
    <div class="row">
        {{-- Box Kiri --}}
        <div class="col-sm-5 col-12 col-md-4" style="margin-top: 50px;">
            <div class="col-sm-7 col-md-8  col-12 text-center d-block d-sm-none">
                <div id="anim2" class="p-4"></div>
            </div>
           <div style="display:flex; align-items:center; gap:20px; margin-top:20px;">
  
  <!-- Bagian Logo smaknam -->
  <img src="{{ url('/asset/img/logo.png') }}" alt="Gambar LMS" style="width:140px; height:auto; border-radius:10px;">
  
  <!-- Bagian Teks -->
  <div>
    <h1 style="font-size:30px; text-transform:uppercase; color:#222; letter-spacing:1px;
      font-family:Playfair Display, serif; font-weight:400;">Learning</h1>
    <h1 style="font-size:30px; text-transform:uppercase; color:#222; letter-spacing:1px;
      font-family:Playfair Display, serif; font-weight:400;">Management</h1>
    <h1 style="font-size:30px; text-transform:uppercase; color:#222; letter-spacing:1px;
      font-family:Playfair Display, serif; font-weight:400;">System</h1>
  </div>

</div>

            <div class="card px-1 py-4 mt-4">
                <div class="card-body">
                    <form action="{{ route('authenticate') }}" method="POST">
                        @csrf
                        <div class="row">
                            {{-- Start Form --}}
                            <div class="col-sm-12 mb-3">
                                <h1>Login</h1>
                                <span class="text-secondary">Silahkan login untuk melanjutkan.</span>
                                @if ($hasAdmin == 0)
                                    <div class="alert alert-warning" role="alert">
                                        Akun <span class="text-danger">Admin</span> belum dibuat, <a
                                            href="{{ route('adminRegister') }}">Buat sekarang</a>
                                    </div>
                                @endif
                                @if (session()->has('register-success'))
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        {{ session('register-success') }}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>
                                @endif
                                @if (session()->has('login-error'))
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        {{ session('login-error') }}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>
                                @endif
                                @if (session()->has('logout-success'))
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        {{ session('logout-success') }}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert"
                                            aria-label="Close"></button>
                                    </div>
                                @endif
                                <hr>
                                <div class="form-group">
                                    <label for="email">Email : </label>
                                    <input class="form-control" id="email" type="email" name="email"
                                        placeholder="Masukan email anda..." required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 mb-4">
                                <div class="form-group">
                                    <label for="password">Password : </label>
                                    <input class="form-control" id="password" type="password" name="password"
                                        placeholder="Masukan Password anda..." required>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary w-100 mt-4" type="submit"><i
                                class="fa-solid fa-right-to-bracket fa-flip-vertical"></i> Login</button>
                    </form>
                    {{-- Form Habis --}}
                    <div class="mt-2">
                        <hr>
                        <span class="small text-secondary"><span style="color:red">*</span>Siswa Harus Registrasi Terlebih Dahulu Jika Tidak memiliki akun <a
                                href="{{ route('register') }}">Register</a></span>
                    </div>
                </div>
            </div>
        </div>
        {{-- Box Kanan --}}
        <div class=" col-sm-7 col-md-8 mt-4 col-12 text-center d-none d-sm-block">
            <div id="anim" class="p-4"></div>
            {{-- <img src="asset/img/illustration-1.jpg" width="700px" class=" img-fluid" alt=""> --}}
        </div>
    </div>
@endsection
