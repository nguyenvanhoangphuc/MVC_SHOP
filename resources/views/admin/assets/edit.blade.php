@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{-- {{ trans('global.edit') }} {{ trans('cruds.asset.title_singular') }} --}}
        Chỉnh sửa sản phẩm
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.assets.update", [$asset->id]) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                {{-- <label class="required" for="name">{{ trans('cruds.asset.fields.name') }}</label> --}}
                Tên sản phẩm
                <input class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" type="text" name="name" id="name" value="{{ old('name', $asset->name) }}" required>
                @if($errors->has('name'))
                    <div class="invalid-feedback">
                        {{ $errors->first('name') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.asset.fields.name_helper') }}</span>
            </div>
            <div class="form-group">
                {{-- <label for="description">{{ trans('cruds.asset.fields.description') }}</label> --}}
                Mô tả sản phẩm
                <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}" name="description" id="description">{{ old('description', $asset->description) }}</textarea>
                @if($errors->has('description'))
                    <div class="invalid-feedback">
                        {{ $errors->first('description') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.asset.fields.description_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="danger_level">Giá</label>
                <input class="form-control {{ $errors->has('danger_level') ? 'is-invalid' : '' }}" type="number" name="danger_level" id="danger_level" value="{{ old('danger_level', $asset->danger_level) }}" required>
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
