<%--
  Created by IntelliJ IDEA.
  User: PearFL
  Date: 2018/11/26
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;"  />
    <title>合肥学院辅导员评教页面</title>
    <link rel="stylesheet" href="css/boostrap.min.css">
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .container {
            margin: 15px 0;
        }

        textarea {
            width: 100%;
            resize: none;
        }

        label {
            display: inline;
        }

        .must {
            color: red;
            vertical-align: middle;
            margin-left: 5px;
        }

        .notmust {
            color: lightgray;
            font-size: 13px;
            vertical-align: middle;
        }
    </style>
</head>
<%
    /*String studentname = (String) session.getAttribute("studentname");
    String ybid = (String)session.getAttribute("ybid");
    String studentid = (String)session.getAttribute("studentid");
    String teachername =(String) session.getAttribute("teachername");
    String classes = (String) session.getAttribute("classes");
    String schoolname = (String) session.getAttribute("schoolname");*/
%>
<body>
<div class="container">
    <form action="../addsql" class="needs-validation" novalidate method="get">
        <img src="image/logo.png">
        <button type="button" class="btn btn-default">学生名：<%=session.getAttribute("studentname")%></button>
        <button type="button" class="btn btn-default">辅导员：<%=session.getAttribute("teachername")%></button>
        <hr>
        <dl class="list-group">
            <dt class="list-group-item">一、政治立场坚定，贯彻执行党的路线方针政策，教育引导学生树立正确的理想信念
            </dt>
            <dd class="list-group-item">
                <input type="radio" name="group1" value="A" id="1_1" checked/>
                <label for="1_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group1" value="B" id="1_2" />
                <label for="1_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group1" value="C" id="1_3" />
                <label for="1_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group1" value="D" id="1_4" />
                <label for="1_4">不满意</label>
            </dd>

            <dt class="list-group-item">二、办事公道，作风正派，不接受学生钱物</dt>
            <dd class="list-group-item">
                <input type="radio" name="group2" value="A" id="2_1" checked/>
                <label for="2_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group2" value="B" id="2_2" />
                <label for="2_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group2" value="C" id="2_3" />
                <label for="2_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group2" value="D" id="2_4" />
                <label for="2_4">不满意</label>
            </dd>

            <dt class="list-group-item">三、有相应的理论政策和业务水平以及分析、解决实际问题的能力，积极为学生提供政策咨询服务</dt>
            <dd class="list-group-item">
                <input type="radio" name="group3" value="A" id="3_1" checked/>
                <label for="3_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group3" value="B" id="3_2" />
                <label for="3_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group3" value="C" id="3_3" />
                <label for="3_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group3" value="D" id="3_4" />
                <label for="3_4">不满意</label>
            </dd>

            <dt class="list-group-item">四、组织协调能力强，善于决策，工作有条理，有开拓创新精神</dt>
            <dd class="list-group-item">
                <input type="radio" name="group4" value="A" id="4_1" checked/>
                <label for="4_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group4" value="B" id="4_2" />
                <label for="4_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group4" value="C" id="4_3" />
                <label for="4_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group4" value="D" id="4_4" />
                <label for="4_4">不满意</label>
            </dd>

            <dt class="list-group-item">五、责任心、事业心强，工作有投入，有牺牲奉献精神，能动脑筋、想办法，积极主动地开展工作</dt>
            <dd class="list-group-item">
                <input type="radio" name="group5" value="A" id="5_1" checked/>
                <label for="5_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group5" value="B" id="5_2" />
                <label for="5_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group5" value="C" id="5_3" />
                <label for="5_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group5" value="D" id="5_4" />
                <label for="5_4">不满意</label>
            </dd>

            <dt class="list-group-item">六、经常深入学生课堂、宿舍，食堂了解情况，信息畅通、灵敏，对学生中发生的事故，能及时发现并妥善处理</dt>
            <dd class="list-group-item">
                <input type="radio" name="group6" value="A" id="6_1" checked/>
                <label for="6_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group6" value="B" id="6_2" />
                <label for="6_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group6" value="C" id="6_3" />
                <label for="6_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group6" value="D" id="6_4" />
                <label for="6_4">不满意</label>
            </dd>

            <dt class="list-group-item">七、熟悉和掌握每个学生的学习、生活和家庭情况以及心理健康状况。帮助学生解决学习、生活中存在的问题</dt>
            <dd class="list-group-item">
                <input type="radio" name="group7" value="A" id="7_1" checked/>
                <label for="7_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group7" value="B" id="7_2" />
                <label for="7_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group7" value="C" id="7_3" />
                <label for="7_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group7" value="D" id="7_4" />
                <label for="7_4">不满意</label>
            </dd>

            <dt class="list-group-item">八、学生素质综合测评工作质量好，评优评奖、助学金等工作按章办事，无弄虚作假现象；重视贫困生工作，掌握勤工助学活动学生的相关情况</dt>
            <dd class="list-group-item">
                <input type="radio" name="group8" value="A" id="8_1" checked/>
                <label for="8_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group8" value="B" id="8_2" />
                <label for="8_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group8" value="C" id="8_3" />
                <label for="8_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group8" value="D" id="8_4" />
                <label for="8_4">不满意</label>
            </dd>

            <dt class="list-group-item">九、指导学生掌握学习方法，提高学习效率；分成次、全过程地开展就业指导工作，积极帮助学生提高综合素质和就业竞争力</dt>
            <dd class="list-group-item">
                <input type="radio" name="group9" value="A" id="9_1" checked/>
                <label for="9_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group9" value="B" id="9_2" />
                <label for="9_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group9" value="C" id="9_3" />
                <label for="9_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group9" value="D" id="9_4" />
                <label for="9_4">不满意</label>
            </dd>

            <dt class="list-group-item">十、做好班级干部的选配和培养工作，发挥学生骨干的模范带头作用，指导和帮助学生开展课外活动，晚自习、宿舍卫生等常规管理成绩优秀。班级同学遵纪守法，有凝聚力，班级风气正</dt>
            <dd class="list-group-item">
                <input type="radio" name="group10" value="A" id="10_1" checked/>
                <label for="10_1">优秀</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group10" value="B" id="10_2" />
                <label for="10_2">良好</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group10" value="C" id="10_3" />
                <label for="10_3">及格</label>
            </dd>
            <dd class="list-group-item">
                <input type="radio" name="group10" value="D" id="10_4" />
                <label for="10_4">不满意</label>
            </dd>

            <dd class="list-group-item">
                <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
            </dd>
        </dl>
    </form>
</div>


<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件
-->
<script src="js/bootstrap.min.js"></script>
<script src="layer/layer.js"></script>
</body>

</html>
