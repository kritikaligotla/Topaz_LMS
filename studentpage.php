<head>
    <script type="text/javascript">
        function stopRKey(evt) {
            var evt = (evt) ? evt : ((event) ? event : null);
            var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
            if ((evt.keyCode == 13) && (node.type == "text")) {
                return false;
            }
        }

        document.onkeypress = stopRKey;
    </script>
</head>
<div class="container">
    <div class="row">
        <div class="panel panel-primary filterable">
            <form method="post" action="barCodeGen.php" target="_blank">
                <div class="panel-heading">

                    <a class="btn btn-default" href="#" data-toggle="modal" data-target="#myModal1">Add</a>
                    <input class="btn" type="submit" value="Generate BarCode" name="gen" />
                    <input class="btn" type="submit" value="Delete" name="delete" />
                    <a class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span>
                        Filter</a>
                </div>
                <table class="table">
                    <thead>
                        <tr class="filters">
                            <th><input type="text" class="form-control" placeholder="Check Box" disabled></th>
                            <th><input type="text" class="form-control" placeholder="Id" disabled></th>
                            <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                            <th><input type="text" class="form-control" placeholder="Group" disabled></th>
                            <th><input type="text" class="form-control" placeholder="Books Taken" disabled></th>
                            <th><input type="text" class="form-control" placeholder="Sutdent/Faculty" disabled></th>
                            <th><input type="text" class="form-control" placeholder="fine" disabled></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        include 'db.php';
                        $getbooks = mysqli_query($con, "SELECT * FROM `stddataa` where 1");
                        $i = 1;
                        while ($row = mysqli_fetch_assoc($getbooks)) {
                        ?>
                            <tr>
                                <td><input type="checkbox" name="barcodes[]" value="<?php echo $row['stdid'] ?>" /></td>
                                <td><?php echo $row['stdid'] ?></td>
                                <td><input type="hidden" value="<?php echo $row['stdname'] ?>" name="var[]"><?php echo $row['stdname'] ?></td>
                                <td><?php echo $row['group'] ?></td>
                                <td><?php echo $row['Books'] ?></td>
                                <td><?php echo $row['type'] == 1 ? "Student" : "faculty" ;?></td>
                                <td><?php echo $row['fine']+$row['running_fine']?></td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
<div class="modal" id="myModal1">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Add</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <form method="post" action="insertstd.php">
                    <div class="form-group">
                        <label for="Sname">Name</label>
                        <input type="text" name="sname" class="form-control" placeholder="Enter Name" id="Sname">
                    </div>
                    <div class="form-group">
                        <label for="rnum">ID</label>
                        <input type="text" name="rnum" class="form-control" placeholder="Enter iD" id="rnum">
                    </div>
                    <div class="form-group">
                        <lable for="stype">Type</lable>
                        <select class="form-control" name="type">
                            <option value=1>Student</option>
                            <option value=2>Faculty</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="dept">Department</label>
                        <select class="form-control" name="dept" id="dept">
                            <option>ECE</option>
                            <option>CSE</option>
                            <option>CIVIL</option>
                            <option>EEE</option>
                            <option>MECH</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('.filterable .btn-filter').click(function() {

            var $panel = $(this).parents('.filterable'),
                $filters = $panel.find('.filters input'),
                $tbody = $panel.find('.table tbody');
            if ($filters.prop('disabled') == true) {
                $filters.prop('disabled', false);
                $filters.first().focus();
            } else {
                $filters.val('').prop('disabled', true);
                $tbody.find('.no-result').remove();
                $tbody.find('tr').show();
            }
        });

        $('.filterable .filters input').keyup(function(e) {
            /* Ignore tab key */
            var code = e.keyCode || e.which;
            if (code == '9') return;
            /* Useful DOM data and selectors */
            var $input = $(this),
                inputContent = $input.val().toLowerCase(),
                $panel = $input.parents('.filterable'),
                column = $panel.find('.filters th').index($input.parents('th')),
                $table = $panel.find('.table'),
                $rows = $table.find('tbody tr');
            /* Dirtiest filter function ever ;) */
            var $filteredRows = $rows.filter(function() {
                var value = $(this).find('td').eq(column).text().toLowerCase();
                return value.indexOf(inputContent) === -1;
            });
            /* Clean previous no-result if exist */
            $table.find('tbody .no-result').remove();
            /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
            $rows.show();
            $filteredRows.hide();
            /* Prepend no-result row if all rows are filtered */
            if ($filteredRows.length === $rows.length) {
                $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="' + $table
                    .find('.filters th').length + '">No result found</td></tr>'));
            }
        });
    });
</script>