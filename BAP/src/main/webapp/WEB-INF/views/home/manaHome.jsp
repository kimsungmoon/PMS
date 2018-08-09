<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>B.A.P P_M_S</title>
<!-- Font Awesome Icons -->
<link
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link
   href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
   rel="stylesheet" type="text/css" />
<!-- Bootstrap 3.3.4 -->
<link
   href="<%=request.getContextPath()%>/resources/plugins/bootstrap/css/bootstrap.min.css"
   rel="stylesheet" type="text/css" />
<!-- ADD pagination  -->
<link href="<%=request.getContextPath()%>/resources/css/pagination.css"
   rel="stylesheet" type="text/css" />
<!-- ADD calendar  -->
<link href="<%=request.getContextPath()%>/resources/css/calendar.css"
   rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link
   href="<%=request.getContextPath()%>/resources/dist/css/adminlte.min.css"
   rel="stylesheet" type="text/css" />

<!-- fullCalendar 2.2.5-->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.min.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/plugins/fullcalendar/fullcalendar.print.css"
   media="print">



<style>
div#wrapp {
   width: 960px;
   margin: 0 auto;
   height: auto;
   
}

@import url('https://fonts.googleapis.com/css?family=Indie+Flower');

</style>

</head>


<body>

    <div id="wrapp">
      

      <!-- Content Wrapper. Contains page content -->
     <div class="content-wrapper" style="margin-left:0px;margin-top:10px; height:1000px"> 
         <!-- Content Header (Page header) -->
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6" style="font-family: 'Indie Flower', cursive;">
                     <h1>MANAGER/Dash_Board</h1>
                     <a href="../manager/userlist">사원리스트</a>
                  </div>

               </div>
            </div>
            <!-- /.container-fluid -->
         </section>

         <!-- Main content -->
         
            <div class="container-fluid">

               <div class="col-md-6">

                  <!-- 사용은 안하지만 지울경우 도너차트가 날라감 //////////////////////////////////////-->
                  
                  <div  style="margin-left: -10px; width:600px; margin-top: 20px">
                  <!-- /.card-body//////////////////////////////////////////////// -->
                  <div >
                     <div class="card" style="width: 400px">
                        <div class="card-header border-transparent">
                           <h3 class="card-title">
                              <strong>*사원목록</strong>
                           </h3>

                           <div class="card-tools">
                              <button type="button" class="btn btn-tool"
                                 data-widget="collapse">
                                 <i class="fa fa-minus"></i>
                              </button>
                              <button type="button" class="btn btn-tool"
                                 data-widget="remove">
                                 <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                           <table class="table table-bordered">

                              <tr>
                                 <th style="width: 20px">ID</th>
                                 <th style="width: 20px">NAME</th>
                                 <th style="width: 70px">RANK</th>
                                 <th style="width: 40px">REGDATE</th>
                              </tr>

                              <c:forEach items="${userList}" var="userListVO">

                              <tr>
                                 <td><a href='/manager/read?mem_id=${userListVO.mem_id}'>${userListVO.mem_id}</a></td>
                                 <td>${userListVO.mem_name}</td>
                                 <td>${userListVO.mem_rank}</td>
                                 <td><fmt:formatDate pattern="yyyy-MM-dd" value="${userListVO.mem_regdate}" /></td>
                              </tr>
                              </c:forEach>

                           </table>
                           <!-- /.table-responsive -->
                        </div>
                     </div>
                  </div>
                   </div> 


                  <!-- 숫자그래프////////////////////////////////////////////////////// -->
                  
                     
                  <!-- 숫자그래프////////////////////////////////////////////////////// -->


                  <!--도넛그래프////////////////////////////////////////////////////// -->
                  
                  <!--도넛그래프////////////////////////////////////////////////////// -->


                  <!-- /.col (LEFT) -->
                  <div class="col-md-6">
                     <!-- LINE CHART -->
                     <div class="card card-info" style="display: none;">
                        <div class="card-header">
                           <h3 class="card-title">Line Chart</h3>

                           <div class="card-tools">
                              <button type="button" class="btn btn-tool"
                                 data-widget="collapse">
                                 <i class="fa fa-minus"></i>
                              </button>
                              <button type="button" class="btn btn-tool"
                                 data-widget="remove">
                                 <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                        <div class="card-body">
                           <div class="chart">
                              <canvas id="lineChart" style="height: 250px"></canvas>
                           </div>
                        </div>
                        <!-- /.card-body -->
                     </div>
                     <!-- /.card -->



                  </div>
                  <div style="margin-left: 420px; width: 500px; margin-top: -250px ">
                     <div class="card">
                        <div class="card-header border-transparent">
                           <h3 class="card-title">
                              <strong>*Notice</strong>
                           </h3>

                           <div class="card-tools">
                              <button type="button" class="btn btn-tool"
                                 data-widget="collapse">
                                 <i class="fa fa-minus"></i>
                              </button>
                              <button type="button" class="btn btn-tool"
                                 data-widget="remove">
                                 <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                           <table class="table table-bordered">

                              <tr>
                                 <th style="width: 100px;">제목</th>
                                 <th style="width: 20px;">작성자</th>
                                 <th style="width: 50px;">작성일</th>
                              </tr>

                              <c:forEach items="${noticeList}" var="notice">

                                 <tr>
                                    <td><a href='/notice/detail?notice_no=${notice.notice_no}'>${notice.notice_title}</a></td>
                                    <td>${notice.mem_name}</td>
                                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                          value="${notice.notice_date}" /></td>
                                 </tr>

                              </c:forEach>

                           </table>
                           <!-- /.table-responsive -->
                        </div>
                     </div>
                  </div>

                  <!-- ////////////////////////////////////////////////////////////////// -->
                  <div style="margin-left: 410px; width: 510px; margin-top: -800px;">
                     <div class="card bg-success-gradient">
                        <div class="card-header no-border ui-sortable-handle"
                           style="cursor: move;">

                           <h3 class="card-title">
                              <i class="fa fa-calendar"></i> Calendar
                           </h3>
                           <!-- tools card -->
                           <div class="card-tools">
                              <!-- button with a dropdown -->
                              <div class="btn-group">
                                 <button type="button"
                                    class="btn btn-success btn-sm dropdown-toggle"
                                    data-toggle="dropdown">
                                    <i class="fa fa-bars"></i>
                                 </button>
                                 <div class="dropdown-menu float-right" role="menu">
                                    <a href="#" class="dropdown-item">Add new event</a> <a
                                       href="#" class="dropdown-item">Clear events</a>
                                    <div class="dropdown-divider"></div>
                                    <a href="#" class="dropdown-item">View calendar</a>
                                 </div>
                              </div>
                              <button type="button" class="btn btn-success btn-sm"
                                 data-widget="collapse">
                                 <i class="fa fa-minus"></i>
                              </button>
                              <button type="button" class="btn btn-success btn-sm"
                                 data-widget="remove">
                                 <i class="fa fa-times"></i>
                              </button>
                           </div>
                           <!-- /. tools -->
                        </div>
                     </div>
                     <!-- /.card-header -->
                     <div class="card-body p-0">
                        <!--The calendar -->
                        <div id="calendar" style="width: 100%">
                           <div class="datepicker datepicker-inline">
                              <div class="datepicker-days" style="display: block;">
                                 <table class="table table-condensed">
                                    <thead>
                                       <tr>

                                          <th colspan="5" class="datepicker-switch">July 2018</th>

                                       </tr>
                                       <tr>
                                          <th class="dow">Su</th>
                                          <th class="dow">Mo</th>
                                          <th class="dow">Tu</th>
                                          <th class="dow">We</th>
                                          <th class="dow">Th</th>
                                          <th class="dow">Fr</th>
                                          <th class="dow">Sa</th>
                                       </tr>
                                    </thead>
                                    <tbody>

                                       <tr>
                                          <td class="day">1</td>
                                          <td class="day">2</td>
                                          <td class="day">3</td>
                                          <td class="day">4</td>
                                          <td class="day">5</td>
                                          <td class="day">6</td>
                                          <td class="day">7</td>
                                       </tr>
                                       <tr>
                                          <td class="day">8</td>
                                          <td class="day">9</td>
                                          <td class="day">10</td>
                                          <td class="day">11</td>
                                          <td class="day">12</td>
                                          <td class="day">13</td>
                                          <td class="day">14</td>
                                       </tr>
                                       <tr>
                                          <td class="day">15</td>
                                          <td class="day">16</td>
                                          <td class="day">17</td>
                                          <td class="day">18</td>
                                          <td class="day">19</td>
                                          <td class="day">20</td>
                                          <td class="day">21</td>
                                       </tr>
                                       <tr>
                                          <td class="day">22</td>
                                          <td class="day">23</td>
                                          <td class="day">24</td>
                                          <td class="day">25</td>
                                          <td class="day">26</td>
                                          <td class="day">27</td>
                                          <td class="day">28</td>
                                       </tr>
                                       <tr>
                                          <td class="day">29</td>
                                          <td class="day">30</td>
                                          <td class="day">31</td>

                                       </tr>
                                    </tbody>
                                    <tfoot>
                                       <tr>
                                          <th colspan="7" class="today" style="display: none;">Today</th>
                                       </tr>
                                       <tr>
                                          <th colspan="7" class="clear" style="display: none;">Clear</th>
                                       </tr>
                                    </tfoot>
                                 </table>
                              </div>
                              <div class="datepicker-months" style="display: none;">
                                 <table class="table table-condensed">
                                    <thead>
                                       <tr>
                                          <th class="prev" style="visibility: visible;">«</th>
                                          <th colspan="5" class="datepicker-switch">2018</th>
                                          <th class="next" style="visibility: visible;">»</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td colspan="7"><span class="month">Jan</span><span
                                             class="month">Feb</span><span class="month">Mar</span><span
                                             class="month">Apr</span><span class="month">May</span><span
                                             class="month">Jun</span><span class="month">Jul</span><span
                                             class="month">Aug</span><span class="month">Sep</span><span
                                             class="month">Oct</span><span class="month">Nov</span><span
                                             class="month">Dec</span></td>
                                       </tr>
                                    </tbody>
                                    <tfoot>
                                       <tr>
                                          <th colspan="7" class="today" style="display: none;">Today</th>
                                       </tr>
                                       <tr>
                                          <th colspan="7" class="clear" style="display: none;">Clear</th>
                                       </tr>
                                    </tfoot>
                                 </table>
                              </div>
                              <div class="datepicker-years" style="display: none;">
                                 <table class="table table-condensed">
                                    <thead>
                                       <tr>
                                          <th class="prev" style="visibility: visible;">«</th>
                                          <th colspan="5" class="datepicker-switch">2010-2019</th>
                                          <th class="next" style="visibility: visible;">»</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td colspan="7"><span class="year old">2009</span><span
                                             class="year">2010</span><span class="year">2011</span><span
                                             class="year">2012</span><span class="year">2013</span><span
                                             class="year">2014</span><span class="year">2015</span><span
                                             class="year">2016</span><span class="year">2017</span><span
                                             class="year">2018</span><span class="year">2019</span><span
                                             class="year new">2020</span></td>
                                       </tr>
                                    </tbody>
                                    <tfoot>
                                       <tr>
                                          <th colspan="7" class="today" style="display: none;">Today</th>
                                       </tr>
                                       <tr>
                                          <th colspan="7" class="clear" style="display: none;">Clear</th>
                                       </tr>
                                    </tfoot>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- /.card-body -->
                  </div>
                  <!-- /.card-footer -->

                  <!-- /////////////////////////////////////////////////////////////////// -->
               </div>
               <!-- /.col (RIGHT) -->
            </div>
            <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
      
      <!-- /.content -->

     

      <!-- Control Sidebar -->
     
   </div>
   <!-- ./wrapper -->

   <!-- jQuery -->
   <script
      src="<%=request.getContextPath()%>/resources/plugins/jquery/jquery.min.js"></script>
   <!-- Bootstrap 4 -->
   <script
      src="<%=request.getContextPath()%>/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
   <!-- ChartJS 1.0.1 -->
   <script
      src="<%=request.getContextPath()%>/resources/plugins/chartjs-old/Chart.min.js"></script>
   <!-- FastClick -->
   <script
      src="<%=request.getContextPath()%>/resources/plugins/fastclick/fastclick.js"></script>
   <!-- AdminLTE App -->
   <script
      src="<%=request.getContextPath()%>/resources/dist/js/adminlte.min.js"></script>
   <!-- AdminLTE for demo purposes -->
   <script src="<%=request.getContextPath()%>/resources/dist/js/demo.js"></script>
   <!-- page script -->
   <script>
      $(function() {
         /* ChartJS
          * -------
          * Here we will create a few charts using ChartJS
          */

         //--------------
         //- AREA CHART -
         //--------------
         // Get context with jQuery - using jQuery's .get() method.
         var areaChartCanvas = $('#areaChart').get(0).getContext('2d')
         // This will get the first returned node in the jQuery collection.
         var areaChart = new Chart(areaChartCanvas)

         var areaChartData = {
            labels : [ 'January', 'February', 'March', 'April', 'May',
                  'June', 'July' ],
            datasets : [ {
               label : 'Electronics',
               fillColor : 'rgba(210, 214, 222, 1)',
               strokeColor : 'rgba(210, 214, 222, 1)',
               pointColor : 'rgba(210, 214, 222, 1)',
               pointStrokeColor : '#c1c7d1',
               pointHighlightFill : '#fff',
               pointHighlightStroke : 'rgba(220,220,220,1)',
               data : [ 65, 59, 80, 81, 56, 55, 40 ]
            }, {
               label : 'Digital Goods',
               fillColor : 'rgba(60,141,188,0.9)',
               strokeColor : 'rgba(60,141,188,0.8)',
               pointColor : '#3b8bba',
               pointStrokeColor : 'rgba(60,141,188,1)',
               pointHighlightFill : '#fff',
               pointHighlightStroke : 'rgba(60,141,188,1)',
               data : [ 28, 48, 40, 19, 86, 27, 90 ]
            } ]
         }

         var areaChartOptions = {
            //Boolean - If we should show the scale at all
            showScale : true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines : false,
            //String - Colour of the grid lines
            scaleGridLineColor : 'rgba(0,0,0,.05)',
            //Number - Width of the grid lines
            scaleGridLineWidth : 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines : true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines : true,
            //Boolean - Whether the line is curved between points
            bezierCurve : true,
            //Number - Tension of the bezier curve between points
            bezierCurveTension : 0.3,
            //Boolean - Whether to show a dot for each point
            pointDot : false,
            //Number - Radius of each point dot in pixels
            pointDotRadius : 4,
            //Number - Pixel width of point dot stroke
            pointDotStrokeWidth : 1,
            //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
            pointHitDetectionRadius : 20,
            //Boolean - Whether to show a stroke for datasets
            datasetStroke : true,
            //Number - Pixel width of dataset stroke
            datasetStrokeWidth : 2,
            //Boolean - Whether to fill the dataset with a color
            datasetFill : true,
            //String - A legend template
            //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio : true,
            //Boolean - whether to make the chart responsive to window resizing
            responsive : true
         }

         //Create the line chart
         areaChart.Line(areaChartData, areaChartOptions)

         //-------------
         //- LINE CHART -
         //--------------
         var lineChartCanvas = $('#lineChart').get(0).getContext('2d')
         var lineChart = new Chart(lineChartCanvas)
         var lineChartOptions = areaChartOptions
         lineChartOptions.datasetFill = false
         lineChart.Line(areaChartData, lineChartOptions)

         //-------------
         //- PIE CHART -
         //-------------
         // Get context with jQuery - using jQuery's .get() method.
         var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
         var pieChart = new Chart(pieChartCanvas)
         var PieData = [ {
            value : 700,
            color : '#f56954',
            highlight : '#f56954',
            label : 'Chrome'
         }, {
            value : 500,
            color : '#00a65a',
            highlight : '#00a65a',
            label : 'IE'
         }, {
            value : 400,
            color : '#f39c12',
            highlight : '#f39c12',
            label : 'FireFox'
         }, {
            value : 600,
            color : '#00c0ef',
            highlight : '#00c0ef',
            label : 'Safari'
         }, {
            value : 300,
            color : '#3c8dbc',
            highlight : '#3c8dbc',
            label : 'Opera'
         }, {
            value : 100,
            color : '#d2d6de',
            highlight : '#d2d6de',
            label : 'Navigator'
         } ]
         var pieOptions = {
            //Boolean - Whether we should show a stroke on each segment
            segmentShowStroke : true,
            //String - The colour of each segment stroke
            segmentStrokeColor : '#fff',
            //Number - The width of each segment stroke
            segmentStrokeWidth : 2,
            //Number - The percentage of the chart that we cut out of the middle
            percentageInnerCutout : 50, // This is 0 for Pie charts
            //Number - Amount of animation steps
            animationSteps : 100,
            //String - Animation easing effect
            animationEasing : 'easeOutBounce',
            //Boolean - Whether we animate the rotation of the Doughnut
            animateRotate : true,
            //Boolean - Whether we animate scaling the Doughnut from the centre
            animateScale : false,
            //Boolean - whether to make the chart responsive to window resizing
            responsive : true,
            // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio : true,
         //String - A legend template
         }
         //Create pie or douhnut chart
         // You can switch between pie and douhnut using the method below.
         pieChart.Doughnut(PieData, pieOptions)

         //-------------
         //- BAR CHART -
         //-------------
         var barChartCanvas = $('#barChart').get(0).getContext('2d')
         var barChart = new Chart(barChartCanvas)
         var barChartData = areaChartData
         barChartData.datasets[1].fillColor = '#00a65a'
         barChartData.datasets[1].strokeColor = '#00a65a'
         barChartData.datasets[1].pointColor = '#00a65a'
         var barChartOptions = {
            //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
            scaleBeginAtZero : true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines : true,
            //String - Colour of the grid lines
            scaleGridLineColor : 'rgba(0,0,0,.05)',
            //Number - Width of the grid lines
            scaleGridLineWidth : 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines : true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines : true,
            //Boolean - If there is a stroke on each bar
            barShowStroke : true,
            //Number - Pixel width of the bar stroke
            barStrokeWidth : 2,
            //Number - Spacing between each of the X value sets
            barValueSpacing : 5,
            //Number - Spacing between data sets within X values
            barDatasetSpacing : 1,
            //String - A legend template
            //Boolean - whether to make the chart responsive
            responsive : true,
            maintainAspectRatio : true
         }

         barChartOptions.datasetFill = false
         barChart.Bar(barChartData, barChartOptions)
      })
   </script>
</body>

