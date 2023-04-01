<!DOCTYPE html>
<html lang = "en">
  <head>
    <link rel = "stylesheet" href="app.css"/>
    <link rel = "stylesheet" href="quizQn.css"/>
  </head>
  <body>
    <div class = "container">
      <div id = "questions" class="justify-center flex-column"/>
        <%String currentQn = (String)request.getAttribute("currentQuestion");%>
        <%String optionA = (String)request.getAttribute("optionA");%>
        <%String optionB = (String)request.getAttribute("optionB");%>
        <%String optionC = (String)request.getAttribute("optionC");%>
        <%String optionD = (String)request.getAttribute("optionD");%>
        <%if(currentQn!=null){%>
          <h2 id="question"><%= request.getAttribute("currentQuestion") %></h2>
          <form method="GET" action="startStop">
          <div style="margin-left: 50px;width: 100%;">
          <input type="submit" class="submit-btn" style="background-color: #56a5eb;color: white;border: 0.1rem solid white; border-radius:8px" name = "start_btn" value ="Start">
          <input type="submit" class="submit-btn" style="background-color: #56a5eb;color: white;border: 0.1rem solid white;border-radius:8px" name ="stop_btn" value = "Stop">
          </div>
          </form>
        <%}else{ %>
          <h2 id="question">Q1. What is 1+1?</h2>
          <form method="GET" action="startStop">
          <div style="margin-left: 50px;">
          <input type="submit" class="submit-btn" style="background-color: #56a5eb;color: white;border: 0.1rem solid white; border-radius:8px" name = "start_btn" value ="Start">
          <input type="submit" class="submit-btn" style="background-color: #56a5eb;color: white;border: 0.1rem solid white;border-radius:8px" name ="stop_btn" value = "Stop">
          </div>
        </form>
        <%}%>
        <div class ="choice-container">
          <p class ="choice-prefix">A</p>
          <%if(optionA!=null){%>
            <p class ="choice-text"><%= request.getAttribute("optionA") %></p>
          <%}else{ %>
            <p class ="choice-text">2</p>
          <%}%>
        </div>
        <div class ="choice-container">
          <p class ="choice-prefix">B</p>
          <%if(optionB!=null){%>
            <p class ="choice-text"><%= request.getAttribute("optionB") %></p>
          <%}else{ %>
            <p class ="choice-text">4</p>
          <%}%>
        </div>
        <div class ="choice-container">
          <p class ="choice-prefix">C</p>
          <%if(optionC!=null){%>
            <p class ="choice-text"><%= request.getAttribute("optionC") %></p>
          <%}else{ %>
            <p class ="choice-text">6</p>
          <%}%>
        </div>
        <div class ="choice-container">
          <p class ="choice-prefix">D</p>
          <%if(optionD!=null){%>
            <p class ="choice-text"><%= request.getAttribute("optionD") %></p>
          <%}else{ %>
            <p class ="choice-text">8</p>
          <%}%>
        </div>
        <div style="width:100%;">
          <form method = "post" action="nextQn">
            <button type="submit" class="qn-btn" style="border-radius:8px;">Next Question</button>
          </form>
          <form method ="GET" action="display">
            <button type="submit" class="qn-btn" style="border-radius:8px">Result Statistics</button>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
