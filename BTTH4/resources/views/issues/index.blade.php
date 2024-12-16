<!-- resources/views/issues/index.blade.php -->

<!DOCTYPE html>
<html lang="en">

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Demo Laravel</title>
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../js/home.js"></script>




<body>

    <div class="container">
        @if(session('success'))
        <div id="success-message" class="alert alert-success" style="display: none;">
            {{ session('success') }}
        </div>
        @endif
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-12" style="display: flex; justify-content: center;">
                        <h2><a class="navbar-brand h1" href="{{ route('issues.index') }}" style="font-size: 36px;">CRUD Issues</a></h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12" style="display: flex; justify-content: right;">
                        <a href="{{ route('issues.create') }}" class="btn btn-success" data-toggle="modal">
                            <i class="material-icons">&#xE147;</i> <span>Add New Issues</span>
                        </a>
                    </div>
                </div>



            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>Mã vấn đề</th>
                        <th>Tên máy tính</th>
                        <th>Tên phiên bản</th>
                        <th>Người báo cáo sự cố</th>
                        <th>Thời gian báo cáo</th>
                        <th>Mức độ sự cố</th>
                        <th>Trạng thái hiện tại</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>@foreach($issues as $issues)
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                <label for="checkbox1"></label>
                            </span>
                        </td>
                        <td>{{ $issues->id }}</td>
                        <td>{{ $issues->computer->computer_name }}</td>
                        <td>{{ $issues->computer->model }}</td>
                        <td>{{ $issues->reported_by }}</td>
                        <td>{{ $issues->reported_date }}</td>
                        <td>{{ $issues->urgency }}</td>
                        <td>{{ $issues->status }}</td>


                        <td>
                            <a href="{{ route('issues.edit', $issues->id) }}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <form action="{{ route('issues.destroy', $issues->id) }}" method="POST" style="display: inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>


    <script>
        window.onload = function() {
            var successMessage = document.getElementById("success-message");
            if (successMessage) {
                successMessage.style.display = "block";
                setTimeout(function() {
                    successMessage.style.display = "none";
                }, 1500);
            }
        };
    </script>
</body>

</html>