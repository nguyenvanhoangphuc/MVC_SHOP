@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{-- {{ trans('global.create') }} {{ trans('cruds.asset.title_singular') }} --}}
        Thêm sản phẩm
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.assets.store") }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                {{-- <label class="required" for="name">{{ trans('cruds.asset.fields.name') }}</label> --}}
                <label class="required" for="name">Tên sản phẩm</label>
                <input class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" type="text" name="name" id="name" value="{{ old('name', '') }}" required>
                @if($errors->has('name'))
                    <div class="invalid-feedback">
                        {{ $errors->first('name') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.asset.fields.name_helper') }}</span>
            </div>
            <div class="form-group">
                {{-- <label for="description">{{ trans('cruds.asset.fields.description') }}</label> --}}
                <label for="description">Mô tả sản phẩm</label>
                <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}" name="description" id="description">{{ old('description') }}</textarea>
                @if($errors->has('description'))
                    <div class="invalid-feedback">
                        {{ $errors->first('description') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.asset.fields.description_helper') }}</span>
            </div>
            <div class="form-group">
                {{-- <label class="required" for="danger_level">Danger level</label> --}}
                <label class="required" for="danger_level">Giá</label>
                <input class="form-control {{ $errors->has('danger_level') ? 'is-invalid' : '' }}" type="number" name="danger_level" id="danger_level" value="{{ old('danger_level', 0) }}" required>
                @if($errors->has('danger_level'))
                    <div class="invalid-feedback">
                        {{ $errors->first('danger_level') }}
                    </div>
                @endif
                <span class="help-block"></span>
            </div>
            <div class="form-group">
                <button class="btn btn-success" type="submit">
                    {{-- {{ trans('global.save') }} --}}
                    Lưu
                </button>
            </div>
        </form>
    </div>
</div>



@endsection
