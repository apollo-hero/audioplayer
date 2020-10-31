    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">

<!--=== Container Part ===-->
<div class="container content">
		<div class="row">
				<div class="col-md-12">
					<!-- BEGIN VALIDATION STATES-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-user font-green-sharp"></i>
								<span class="caption-subject font-green-sharp bold uppercase">CHART</span>
							</div>
							
						</div>
                        <?php 
                            $form_action = "admin/chart";

                            $form_id = "form_add_items";

                            $attributes = array('class' => 'form-horizontal', 'id' => $form_id);

                            echo form_open_multipart($form_action, $attributes);

                        ?>
                        <div class = "row">
                            <div class="form-group">

                                <label class="control-label col-md-1"> Month </label>

                                <div class="col-md-1">

                                        <select name="moon_id" id="moon_id" class="form-control">


                                            <?php for ($i=1; $i<13; $i++){ ?>

                                                <option <?php if (isset($month) && $month  == $i){ echo 'selected=selected'; } elseif (!isset($month) && $i == date('m')) { echo 'selected=selected'; }  ?> value="<?php echo $i;?>"><?Php echo $i; ?></option>
                                                
                                            <?php }; ?>
                                        </select>

                                </div>

                                <label class="control-label col-md-1"> Year </label>

                                <div class="col-md-2">

                                        <select name="year_id" id="year_id" class="form-control">
                                            <?php for ($i=2020; $i<2031; $i++){ ?>

                                                <option <?php if (isset($year) && $year  == $i )  echo 'selected=selected'; ?> value="<?php echo $i;?>"><?Php echo $i; ?></option>
                                                
                                            <?php }; ?>
                                        </select>

                                </div>

                                <div class="actions btn-set">

                                    <button type="submit" class="btn green">View</button>

                                </div>

                            </div>
                        </div>

 
                        <h4><?php if(isset($month)){ echo $year;} else { echo date("Y");} ?>/<?php if(isset($month)){ echo $month;} else { echo date("m");} ?>- Stats</h4>
                        <div class="row" style = "margin-top: 50px;">
                            <div class="col-sm-6">
                                <label class="label label-success">Users</label>
                                <div id="chart"  style="height: 300px;"></div>
                            </div>

                            <div class="col-sm-6">
                                <label class="label label-success">Active Subscriptions</label>
                                <div id="chart1"  style="height: 300px;"></div>
                            </div>
  
                        </div>
                        <h4><?php if(isset($month) && $month){ echo $year;} else { echo date("Y");} ?>- Monthly Stats</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="label label-success">Users</label>
                                <div id="chart2"  style="height: 300px;"></div>
                            </div>
                            
                            <div class="col-sm-6">
                                <label class="label label-success">Active Subscriptions</label>
                                <div id="chart3"  style="height: 300px;"></div>
                            </div>
  
                        </div>
						<!-- END VALIDATION STATES-->
                        <!-- Start Song data table -->
                        <h4>Song Play stats</h4>
                        <table class="dataTable table table-striped table-bordered table-hover"  id="list">
                            <thead>
                                <tr>
                                    <?php if($this->input->get_post('sort_by') == "item_id" && $this->input->get_post('sort_order') == "asc"):?>

                                      <th class="sorting_desc" data-column="item_id" data-order="DESC">Song_ID</th>

                                    <?php else:?>

                                      <th class="sorting_asc" data-column="item_id" data-order="asc">Song_ID</th>

                                    <?php endif;?>

                                    <?php if($this->input->get_post('sort_by') == "item_name" && $this->input->get_post('sort_order') == "asc"):?>

                                      <th class="sorting_desc" data-column="item_name" data-order="DESC">Song_Name</th>

                                    <?php else:?>

                                      <th class="sorting_asc" data-column="item_name" data-order="asc">Song_Name</th>

                                    <?php endif;?>

                                    <?php if($this->input->get_post('sort_by') == "total_time" && $this->input->get_post('sort_order') == "asc"):?>

                                      <th class="sorting_desc" data-column="total_time" data-order="DESC">Total_Playing_Time</th>

                                    <?php else:?>

                                      <th class="sorting_asc" data-column="total_time" data-order="asc">Total_Playing_Time</th>

                                    <?php endif;?>

                                    <?php if($this->input->get_post('sort_by') == "item_id" && $this->input->get_post('sort_order') == "asc"):?>

                                      <th class="sorting_desc" data-column="item_id" data-order="DESC">Average_Time</th>

                                    <?php else:?>

                                      <th class="sorting_asc" data-column="item_id" data-order="asc">Average_Time</th>

                                    <?php endif;?> 

                                </tr>
                            </thead>
                            <tbody>
                            <?php if(count($song_data) > 0):?>    

                                <?php

                                foreach ($song_data as $row) {

                                    $song_id = $row['item_id'];

                                    $total_time = $row['total_time'];

                                    $average_time = (int)($row['total_time']*100/$row['count'])/100;

                                    $song_name = $row['item_name'];

                                    ?>
                                <tr class="odd gradeX">

                                    <td><?php echo $song_id; ?></td>

                                    <td><?php echo $song_name; ?></td>

                                    <td><?php echo $total_time; ?></td>

                                    <td><?php echo $average_time; ?></td>
                                </tr>

                                <?php } ?>                              

                                <?php else:?>    

                                <tr>

                                    <td valign="top" colspan="15" class="dataTables_empty">

                                        <h4>No Records Found.</h4>

                                    </td>

                                </tr>

                                <?php endif;?> 

                            </tbody>              
                        </table>


                        <?php echo form_close(); ?>   
					</div>
			</div>
	</div>
</div>

<script>
    $(document).ready(function() {
        $("#list").DataTable({
            "order": [[ 0, "desc" ]]
        }
        );

    });
</script>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>




<script>
        var today = new Date();
    var dd = <?php echo strtotime('today'); ?>;
    var tt = <?php echo strtotime('last day of this month'); ?>;
(function () {
    var $, MyMorris;

    MyMorris = window.MyMorris = {};
    $ = jQuery;

    MyMorris = Object.create(Morris);

    MyMorris.Grid.prototype.gridDefaults["checkYValues"] = "";
    MyMorris.Grid.prototype.gridDefaults["yValueCheck"] = 0;
    MyMorris.Grid.prototype.gridDefaults["yValueCheckColor"] = "";

    MyMorris.Line.prototype.colorFor = function (row, sidx, type) {
        
        if (typeof this.options.lineColors === 'function') {
            return this.options.lineColors.call(this, row, sidx, type);
            
        } else if (type === 'point') {
            switch (this.options.checkYValues) {
                case "eq":
                    if (row.x == this.options.yValueCheck) {
                        return this.options.yValueCheckColor;
                    }
                    break;
                case "gt":
                    if (row.x > this.options.yValueCheckMin) {
                        return this.options.yValueCheckColor;
                    }
                    break;
                case "it":
                    if (row.x > this.options.yValueCheckMin) {
                        return this.options.yValueCheckColor;
                    }
                    break;
                default:
                    return this.options.pointFillColors[sidx % this.options.pointFillColors.length] || this.options.lineColors[sidx % this.options.lineColors.length];
            }

            return this.options.pointFillColors[sidx % this.options.pointFillColors.length] || this.options.lineColors[sidx % this.options.lineColors.length];                   
        } else {
            return this.options.lineColors[sidx % this.options.lineColors.length];
        }
    };
}).call(this);
    //var weekdays = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];
    Morris.Line({
        element: 'chart',
        data: [
            <?php
                for ($i = 1;$i<=31;$i++){
                    if(isset($month)){
                        $chart_data = "{ 'period':'" . date($year.'-'.$month.'-'.$i) . "',user:" . $free[$i] . "}, ";
                        echo $chart_data;                         
                    } else {
                        $chart_data = "{ 'period':'" . date('Y-m-'.$i) . "',user:" . $free[$i] . "}, ";
                        echo $chart_data;                        
                    }

                }
            ?>
        ],
        xkey: 'period',
        ykeys: ['user'],
        labels: ['all users'],
        hideHover: 'auto',
        xLabels: 'period',
        xLabelFormat: function(d) {
            return d.getDate();
        },
        checkYValues: "gt",
        yValueCheckMin: dd*1000,
        yValueCheckMax: tt*1000,
        yValueCheckColor: "red",
        resize: true
    });

    Morris.Line({
        element: 'chart1',
        data: [
            <?php
                for ($i = 1;$i<=31;$i++){
                    if(isset($month)){
                        $chart_data = "{ 'period':'" . date($year.'-'.$month.'-'.$i) . "',user:" . $pro[$i] . "}, ";
                        echo $chart_data;                         
                    } else {
                        $chart_data = "{ 'period':'" . date('Y-m-'.$i) . "',user:" . $pro[$i] . "}, ";
                        echo $chart_data;                        
                    }
                }
            ?>
        ],
        xkey: 'period',
        ykeys: ['user'],
        labels: ['premium users'],
        hideHover: 'auto',
        xLabels: 'period',
        xLabelFormat: function(d) {
            return d.getDate();
        },
        checkYValues: "gt",
        yValueCheckMin: dd*1000,
        yValueCheckMax: tt*1000,
        yValueCheckColor: "red",
        resize: true
    });

    Morris.Line({
        element: 'chart2',
        data: [
            <?php
                for ($i = 1;$i<=12;$i++){
                    if (isset($month)){
                        $chart_data = "{ 'period':'" . date($year.'-'.$i) . "',user:" . $free_month[$i] . "}, ";
                        echo $chart_data;
                    } else {
                        $chart_data = "{ 'period':'" . date('Y-'.$i) . "',user:" . $free_month[$i] . "}, ";
                        echo $chart_data;
                    }

                }
            ?>
        ],
        xkey: 'period',
        ykeys: ['user'],
        labels: ['all users'],
        hideHover: 'auto',
        xLabels: 'period',
        xLabelFormat: function(d) {
            return d.getMonth()+1;
        },
        checkYValues: "it",
        yValueCheckMin: dd*1000,
        yValueCheckMax: tt*1000,
        yValueCheckColor: "red",
        resize: true
    });

    Morris.Line({
        element: 'chart3',
        data: [
            <?php
                for ($i = 1;$i<=12;$i++){
                    if (isset($month)){
                        $chart_data = "{ 'period':'" . date($year.'-'.$i) . "',user:" . $pro_month[$i] . "}, ";
                        echo $chart_data;
                    } else {
                        $chart_data = "{ 'period':'" . date('Y-'.$i) . "',user:" . $pro_month[$i] . "}, ";
                        echo $chart_data;
                    }

                }
            ?>
        ],
        xkey: 'period',
        ykeys: ['user'],
        labels: ['premium users'],
        hideHover: 'auto',
        xLabels: 'period',
        xLabelFormat: function(d) {
            return d.getMonth()+1;
        },
        checkYValues: "it",
        yValueCheckMin: dd*1000,
        yValueCheckMax: tt*1000,
        yValueCheckColor: "red",
        resize: true
    });

</script>