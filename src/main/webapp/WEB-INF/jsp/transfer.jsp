<?xml version="1.0" encoding="UTF-8" ?>

<!-- Build on Call Variable structure doc ICMStub Call Variables.68.xlsx -->


<vxml version="2.0" xmlns="http://www.w3.org/2001/vxml" xml:lang="en-US">
	<form>
		<!-- Input Parameters -->
		<!-- http://stackoverflow.com/questions/1001939/passing-sub-dialog-parameters-in-vxml -->
		<%
			System.out.println("requestMethod: "	+ request.getMethod());
			System.out.println("requestQueryString: "	+ request.getQueryString());
			System.out.println("UCID(CONN_ID): " + request.getParameter("UCID"));
			System.out.println("ID_CALL_FLOW(callClass): "	+ request.getParameter("callClass"));
			System.out.println("APP_CODE_FOR_FIREFLY(applicationCode): "	+ request.getParameter("applicationCode"));
			System.out.println("ANI: "	+ request.getParameter("ANI"));
			System.out.println("DNIS: "	+ request.getParameter("DNIS"));
		%>
		
		<!-- Return Parameters -->
		<var name="accountType" expr="'CA'" />
		<var name="accountNo" expr="'                            1234567890'" />
		<var name="clientName" expr="'                   Guevara Serna Ernesto'" />
		<var name="client" expr="'     GSE111111111111'" />
		<var name="cusSegment" expr="'12345'" />
		<var name="countryISOCode" expr="'en'" />
		<var name="languageISOCode" expr="'US'" />
		<var name="controlPoint" expr="'C00001'" />
		<var name="ivrTxnHist" expr="'N00001N00002N00003N00004N00005N00006N00007N00008N00009N00010N00011N00012N00013N00014N00015N00016N00017N00018N00019N00020'" />
		<var name="cusSubSegment" expr="'00000'" />
		<var name="accessToken" expr="'yy'" />
		<var name="employeeID" expr="'  1001514583'" />
		<var name="GRBNumber" expr="'     0004'" />
		<var name="controlPoint" expr="'999999'" />
		<var name="transferCode" expr="'00000'" />
		<var name="errorCode" expr="'11111'" />
		<var name="cusIDType" expr="'789'" />
		<var name="citinominaID" expr="'66'" />
		<var name="cusType" expr="'55'" />
		<var name="cusScore" expr="'123'" />
		<var name="surveyID" expr="'                   1'" />
		<var name="correspond" expr="'y'" />
		<var name="privacy" expr="'y'" />
		<var name="blocked" expr="'y'" />
		<var name="addrChange" expr="'n'" />
		<var name="birthday" expr="'n'" />
		<var name="dissuasion" expr="'y'" />
		<var name="campaignID" expr="'                    1'" />
		<var name="BranchID" expr="'1234567890'" />
		<var name="actionCode" expr="'00000'" />
		
		
		
		<block> 
			<prompt> 
				<!-- Only test --> 
				<audio src="http://cpmppapp1u.lac.nsroot.net/mpp/misc/CitiAudiosStandard/dev_icg_audios/010309802.wav" />
			</prompt> 
			<return	namelist="accountType accountNo clientName  client cusSegment  countryISOCode languageISOCode controlPoint ivrTxnHist cusSubSegment accessToken employeeID GRBNumber controlPoint transferCode errorCode cusIDType citinominaID cusType cusScore surveyID correspond privacy blocked addrChange birthday dissuasion campaignID BranchID actionCode" />
		</block>
	
	</form>
</vxml>