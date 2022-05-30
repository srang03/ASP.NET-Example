﻿<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/Company">
		<html>
			<body>
				<h1>회사소개</h1>
				<table border="1" style="width:500px;">
					<tr>
						<td>
							사업자명
						</td>
						<td>
							<xsl:value-of select="CompanyName"/>
						</td>
					</tr>
					<tr>
						<td>W
							사업자번호
						</td>
						<td>
							<xsl:value-of select="CompanyNumber"/>	
						</td>
					</tr>
					<tr>
						<td>
							소재지
						</td>
						<td>
							<xsl:value-of select="CompanyAddress"/>
							<xsl:value-of select="CompanyAddressDetial"/>
						</td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
