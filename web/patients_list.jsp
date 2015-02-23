<html>
<head>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.css">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Body Browser</title>
        <link href ="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href ="css/customStyle.css" rel="stylesheet">
<script>
$(document).ready(function() {
    $('#example').dataTable( {
        "pagingType": "full_numbers"
    } );
} );
</script>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0px;height: 52px">
  
          <div class="container">
            <div id="navbar" class="navbar-collapse collapse" style="font-size:78%;">
              <ul class="nav navbar-nav">
                 <li class="active"><a href="./SearchPatient.jsp"><img height="35px" width="50px" style="padding-bottom: 10px"src="img/logo.png" width="200px"/><img height="35px" width="200px" style="padding-bottom: 10px"src="img/logoTitle.png" width="200px"/></a></li>
                 <li><a href="./SearchPatient.jsp" style="margin-left: 350px;">Home</a></li>

               <li>                  
                    <a href="./Login.jsp">Sign Out</a>
                </li>
              </ul>
            </div>
          </div>            
            
        </nav>
<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Patient Name</th>
                <th>Patient Place</th>
                <th>Patient Age</th>
                <th>Visit date</th>
                <th>Ailment</th>
            </tr>
        </thead>
 
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>Headache</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>Stomachache</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>Back ache</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>Pulmanory malfunction</td>
            </tr>
            <tr>
                <td>Airi Satou</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>Intenstine problem</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>Throat infection</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>Bones Brittle</td>
            </tr>
            <tr>
                <td>Rhona Davidson</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
               <td>Pulmanory malfunction</td>
            </tr>
            <tr>
                <td>Colleen Hurst</td>
                <td>San Francisco</td>
                <td>39</td>
                <td>2009/09/15</td>
                <td>$205,500</td>
            </tr>
            <tr>
                <td>Sonya Frost</td>
                <td>Edinburgh</td>
                <td>23</td>
                <td>2008/12/13</td>
                 <td>Tuberclousis</td>
            </tr>
            <tr>
                <td>Jena Gaines</td>
                <td>London</td>
                <td>30</td>
                <td>2008/12/19</td>
                <td>Hernia</td>
            </tr>
            <tr>
                <td>Quinn Flynn</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2013/03/03</td>
                 <td>Amnesia</td>
            </tr>
            <tr>
                <td>Charde Marshall</td>
                <td>San Francisco</td>
                <td>36</td>
                <td>2008/10/16</td>
                 <td>Headache</td>
            </tr>
            <tr>
                <td>Haley Kennedy</td>
                <td>London</td>
                <td>43</td>
                <td>2012/12/18</td>
               <td>Pulmanory malfunction</td>
            </tr>
            <tr>
                <td>Tatyana Fitzpatrick</td>
                <td>London</td>
                <td>19</td>
                <td>2010/03/17</td>
                 <td>Vomitings</td>
            </tr>
            <tr>
                <td>Michael Silva</td>
                <td>London</td>
                <td>66</td>
                <td>2012/11/27</td>
                 <td>Eye infection</td>
            </tr>
            <tr>
                <td>Paul Byrd</td>
                <td>New York</td>
                <td>64</td>
                <td>2010/06/09</td>
                <td>Pulmanory</td>
            </tr>
            <tr>
                <td>Gloria Little</td>
                <td>New York</td>
                <td>59</td>
                <td>2009/04/10</td>
                 <td>Legache</td>
            </tr>
            <tr>
                <td>Bradley Greer</td>
                <td>London</td>
                <td>41</td>
                <td>2012/10/13</td>
                 <td>Hand ache</td>
            </tr>
            <tr>
                <td>Dai Rios</td>
                <td>Edinburgh</td>
                <td>35</td>
                <td>2012/09/26</td>
                <td>$217,500</td>
            </tr>
            <tr>
                <td>Jenette Caldwell</td>
                <td>New York</td>
                <td>30</td>
                <td>2011/09/03</td>
               <td>Pulmanory malfunction</td>
            </tr>
            <tr>
                <td>Yuri Berry</td>
                <td>New York</td>
                <td>40</td>
                <td>2009/06/25</td>
                <td>$675,000</td>
            </tr>
            <tr>
                <td>Caesar Vance</td>
                <td>New York</td>
                <td>21</td>
                <td>2011/12/12</td>
               <td>Arthritis</td>
            </tr>
            <tr>
                <td>Doris Wilder</td>
                <td>Sidney</td>
                <td>23</td>
                <td>2010/09/20</td>
               <td>Intestine malfunction</td>
            </tr>
            <tr>
                <td>Angelica Ramos</td>
                <td>London</td>
                <td>47</td>
                <td>2009/10/09</td>
               <td>Pulmanory malfunction</td>
            </tr>
            <tr>
                <td>Gavin Joyce</td>
                <td>Edinburgh</td>
                <td>42</td>
                <td>2010/12/22</td>
               <td>Brain malfunction</td>
            </tr>
            <tr>
                <td>Jennifer Chang</td>
                <td>Singapore</td>
                <td>28</td>
                <td>2010/11/14</td>
                <td>Shorterm memory</td>
            </tr>
            <tr>
                <td>Brenden Wagner</td>
                <td>San Francisco</td>
                <td>28</td>
                <td>2011/06/07</td>
                <td>Excessive repulsive disorder</td>
            </tr>
            <tr>
                <td>Fiona Green</td>
                <td>San Francisco</td>
                <td>48</td>
                <td>2010/03/11</td>
                <td>Vein Infection</td>
            </tr>
            <tr>
                <td>Shou Itou</td>
                <td>Tokyo</td>
                <td>20</td>
                <td>2011/08/14</td>
				<td>Heart attack</td>
            </tr>
            <tr>
                <td>Michelle House</td>
                <td>Sidney</td>
                <td>37</td>
                <td>2011/06/02</td>
                <td>Pulmanory malfunction</td>
            </tr>
            <tr>
                <td>Suki Burks</td>
                <td>London</td>
                <td>53</td>
                <td>2009/10/22</td>
                <td>Conjunctivitis</td>
            </tr>
            <tr>
                <td>Prescott Bartlett</td>
                <td>London</td>
                <td>27</td>
                <td>2011/05/07</td>
                <td>Bad tooth</td>
            </tr>
            <tr>
                <td>Gavin Cortez</td>
                <td>San Francisco</td>
                <td>22</td>
                <td>2008/10/26</td>
                <td>nostril infection</td>
            </tr>
            <tr>
                <td>Martena Mccray</td>
                <td>Edinburgh</td>
                <td>46</td>
                <td>2011/03/09</td>
                <td>Shoulder infection</td>
            </tr>
            <tr>
                <td>Unity Butler</td>
                <td>San Francisco</td>
                <td>47</td>
                <td>2009/12/09</td>
                <td>Arm Dislocation</td>
            </tr>
            <tr>
                <td>Howard Hatfield</td>
                <td>San Francisco</td>
                <td>51</td>
                <td>2008/12/16</td>
                <td>Thigh infection</td>
            </tr>
            <tr>
                <td>Hope Fuentes</td>
                <td>San Francisco</td>
                <td>41</td>
                <td>2010/02/12</td>
                <td>Thyroid</td>
            </tr>
            <tr>
                <td>Vivian Harrell</td>
                <td>San Francisco</td>
                <td>62</td>
                <td>2009/02/14</td>
				<td>Finger fungus infection</td>
            </tr>
            <tr>
                <td>Timothy Mooney</td>
                <td>London</td>
                <td>37</td>
                <td>2008/12/11</td>
                <td>Skin Infection</td>
            </tr>
            <tr>
                <td>Jackson Bradshaw</td>
                <td>New York</td>
                <td>65</td>
                <td>2008/09/26</td>
				<td>Down syndrome</td>
            </tr>
            <tr>
                <td>Olivia Liang</td>
                <td>Singapore</td>
                <td>64</td>
                <td>2011/02/03</td>
                <td>Haemophilia</td>
            </tr>
            <tr>
                <td>Bruno Nash</td>
                <td>London</td>
                <td>38</td>
                <td>2011/05/03</td>
                <td>Haemochromatosis</td>
            </tr>
            <tr>
                <td>Sakura Yamamoto</td>
                <td>Tokyo</td>
                <td>37</td>
                <td>2009/08/19</td>
                <td>Canavan disease</td>
            </tr>
            <tr>
                <td>Thor Walton</td>
                <td>New York</td>
                <td>61</td>
                <td>2013/08/11</td>
                <td>Prader–Willi syndrome</td>
            </tr>
            <tr>
                <td>Finn Camacho</td>
                <td>San Francisco</td>
                <td>47</td>
                <td>2009/07/07</td>
                <td>$87,500</td>
            </tr>
            <tr>
                <td>Serge Baldwin</td>
                <td>Singapore</td>
                <td>64</td>
                <td>2012/04/09</td>
                <td>Color blindness</td>
            </tr>
            <tr>
                <td>Zenaida Frank</td>
                <td>New York</td>
                <td>63</td>
                <td>2010/01/04</td>
                <td>Cystic fibrosis</td>
            </tr>
            <tr>
                <td>Zorita Serrano</td>
                <td>San Francisco</td>
                <td>56</td>
                <td>2012/06/01</td>
                <td>Klinefelter syndrome</td>
            </tr>
            <tr>
                <td>Jennifer Acosta</td>
                <td>Edinburgh</td>
                <td>43</td>
                <td>2013/02/01</td>
                <td>Tay–Sachs disease</td>
            </tr>
            <tr>
                <td>Cara Stevens</td>
                <td>New York</td>
                <td>46</td>
                <td>2011/12/06</td>
                <td>Neurofibromatosis</td>
            </tr>
            <tr>
                <td>Hermione Butler</td>
                <td>London</td>
                <td>47</td>
                <td>2011/03/21</td>
                <td>Polycystic kidney disease</td>
            </tr>
            <tr>
                <td>Lael Greer</td>
                <td>London</td>
                <td>21</td>
                <td>2009/02/27</td>
                <td>Diabetes</td>
            </tr>
            <tr>
                <td>Jonas Alexander</td>
                <td>San Francisco</td>
                <td>30</td>
                <td>2010/07/14</td>
                <td>$86,500</td>
            </tr>
            <tr>
                <td>Shad Decker</td>
                <td>Edinburgh</td>
                <td>51</td>
                <td>2008/11/13</td>
                <td>Angelman syndrome</td>
            </tr>
            <tr>
                <td>Michael Bruce</td>
                <td>Singapore</td>
                <td>29</td>
                <td>2011/06/27</td>
                <td>Cri du chat</td>
            </tr>
            <tr>
                <td>Donna Snider</td>
                <td>New York</td>
                <td>27</td>
                <td>2011/01/25</td>
                <td>Sickle-cell disease</td>
            </tr>
        </tbody>
    </table>
	   <nav class="navbar navbar-default navbar-fixed-bottom footerColor" role="navigation">
            <div class="container">
                Developed and Maintained by Team Codethons. Copyright 2014.
            </div>
        </nav>
</body>
</html>