<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="width" select="400"/>
<xsl:param name="height" select="400"/>
<xsl:template name="main" match="/">
  <div>
    <style type="text/css" media="all">

    .cell_0_0 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_0_1 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_0_2 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_0_3 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_0_4 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_1_0 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_1_1 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_1_2 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_1_3 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_1_4 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_2_0 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_2_1 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_2_2 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        vertical-align: top;
        text-align: left;
    }
    .cell_2_3 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_2_4 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_3_0 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_3_1 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_3_2 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_3_3 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        vertical-align: top;
        text-align: left;
    }
    .cell_3_4 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-top: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_4_0 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_4_1 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_4_2 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_4_3 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        border-left: 2px solid #000;
        vertical-align: top;
        text-align: left;
    }
    .cell_4_4 {
        margin: 0px 0px 0px 0px;
        padding: 0px 0px 0px 0px;
        width:  80.000px;
        height:  80.000px;
        vertical-align: top;
        text-align: left;
    }

    .board {
       margin: 20px 20px 20px 20px;
       padding: 0px 0px 0px 0px;
       border-collapse: collapse;
    }
    .default {
        position: relative;
        width: 12px;
        height: 12px;
        background-color: #000000;
    }
    .blue {
        position: relative;
        width: 30px;
        height: 30px;
        background-color: #3355DE;
    }
    .red {
        position: relative;
        width: 30px;
        height: 30px;
        background-color: #ED3252;
    }
</style>

<table class="board">
    <tr>
        <td class="cell_0_0">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=0 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=0 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_1_0">
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=0 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=0 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_2_0">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=0 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=0 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_3_0">
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=0 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=0 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_4_0">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=0 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=0 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
    </tr>
    <tr>
        <td class="cell_0_1">
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=1 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=1 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_1_1">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=1 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=1 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_2_1">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=1 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=1 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_3_1">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=1 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=1 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_4_1">
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=1 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=1 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
    </tr>
    <tr>
        <td class="cell_0_2">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=2 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=2 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_1_2">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=2 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=2 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_2_2">
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=2 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=2 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_3_2">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=2 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=2 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_4_2">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=2 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=2 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
    </tr>
    <tr>
        <td class="cell_0_3">
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=3 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=3 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_1_3">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=3 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=3 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_2_3">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=3 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=3 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_3_3">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=3 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=3 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_4_3">
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=3 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=3 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
    </tr>
    <tr>
        <td class="cell_0_4">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=4 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=0 and argument[2]=4 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_1_4">
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=4 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=1 and argument[2]=4 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_2_4">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=4 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=2 and argument[2]=4 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_3_4">
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=4 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=3 and argument[2]=4 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
        <td class="cell_4_4">
<div class="default"></div>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=4 and argument[3]='blue']"><div class="blue"></div></xsl:if>
<xsl:if test="//fact[relation='cell' and argument[1]=4 and argument[2]=4 and argument[3]='red']"><div class="red"></div></xsl:if>
        </td>
    </tr>
</table>
</div>
</xsl:template>
</xsl:stylesheet>
