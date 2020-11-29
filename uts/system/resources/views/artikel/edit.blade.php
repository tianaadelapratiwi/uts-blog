@extends('templateAdmin.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Edit Data Artikel
				</div>
				<div class="card-body">
					<form action="{{url('artikel', $artikel->id)}}" method="post">
						@csrf
						@method("PUT")
					<div class="form-group">
						<label for="" class="control-label">Judul Artikel</label>
						<input type="text" class="form-control" name="judul" value="{{$artikel->judul}}">
					</div>
							<div class="form-group">
								<label for="" class="control-label">Penulis Artikel</label>
								<input type="text" class="form-control" name="penulis" value="{{$artikel->penulis}}">
							</div>
					<div class="form-group">
						<label for="" class="control-label">Isi Artikel</label>
						<textarea name="isi" class="form-control">{{$artikel->isi}}</textarea>
					</div>
					<button class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection