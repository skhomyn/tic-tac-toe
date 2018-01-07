% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
% Created by: Stepan Khomyn.
% 2012
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

% Grid Squares Reference:
%   1 2 3
% A - - -
% B - - -
% C - - -
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

% Set the screen size, remove menu bar and enable "View.Update";
setscreen ("graphics:800;650;position:center;center")
View.Set ("offscreenonly")
View.Set ("nobuttonbar")
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

% Variables and constants;
var circle, cross : int
var text, text2 : int
var x, y, button : int
var a1, a2, a3, b1, b2, b3, c1, c2, c3 : int
var turn : int
var player1, player2 : int
text := Font.New ("Agency FB:100")
text2 := Font.New ("Agency FB:50")
cross := Pic.FileNew ("cross.bmp")
circle := Pic.FileNew ("circle.bmp")
player1 := 0
player2 := 0
turn := 1
a1 := 0
a2 := 0
a3 := 0
b1 := 0
b2 := 0
b3 := 0
c1 := 0
c2 := 0
c3 := 0
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

% Background;
colourback (7)
cls
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

loop

    % Title: "Tic-Tac-Toe";
    Font.Draw ("Tic-Tac-Toe", 60, 540, text, white)
    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

    % Vertical Lines (Left to Right);
    drawfillbox (211, 16, 216, 530, white)
    drawfillbox (384, 16, 389, 530, white)
    drawfillbox (595, 650, 600, 0, white)
    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

    % Horizontal Lines (Top to Bottom);
    drawfillbox (43, 357, 557, 362, white)
    drawfillbox (43, 184, 557, 189, white)
    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

    % Player Scores;
    Font.Draw ("P1", 650, 540, text, red)
    Font.Draw ("P2", 650, 280, text, blue)
    drawfillbox (650, 420, 800, 530, black)
    Font.Draw (intstr (player1), 650, 420, text, white)
    drawfillbox (650, 160, 800, 280, black)
    Font.Draw (intstr (player2), 650, 160, text, white)
    View.Update
    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

    % Text: "Restart";
    drawfillbox (615, 25, 790, 90, black)
    Font.Draw ("Restart", 620, 30, text2, white)
    View.Update
    % - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

    loop

	% Check for winner, or a draw;
	% Check Line as X: A1 - A2 - A3;
	if a1 = 1 and a2 = 1 and a3 = 1 then
	    % A1;
	    drawfillbox (43, 363, 210, 530, 10)
	    Pic.Draw (cross, 51, 371, picMerge)
	    % A2;
	    drawfillbox (217, 363, 383, 530, 10)
	    Pic.Draw (cross, 225, 371, picMerge)
	    % A3;
	    drawfillbox (390, 363, 557, 530, 10)
	    Pic.Draw (cross, 398, 371, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: A1 - A2 - A3;
	elsif a1 = 2 and a2 = 2 and a3 = 2 then
	    % A1;
	    drawfillbox (43, 363, 210, 530, 10)
	    Pic.Draw (circle, 51, 371, picMerge)
	    % A2;
	    drawfillbox (217, 363, 383, 530, 10)
	    Pic.Draw (circle, 225, 371, picMerge)
	    % A3;
	    drawfillbox (390, 363, 557, 530, 10)
	    Pic.Draw (circle, 398, 371, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: B1 - B2 - B3;
	elsif b1 = 1 and b2 = 1 and b3 = 1 then
	    % B1;
	    drawfillbox (43, 190, 210, 356, 10)
	    Pic.Draw (cross, 51, 198, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (cross, 225, 198, picMerge)
	    % B3;
	    drawfillbox (390, 190, 557, 356, 10)
	    Pic.Draw (cross, 398, 198, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: B1 - B2 - B3;
	elsif b1 = 2 and b2 = 2 and b3 = 2 then
	    % B1;
	    drawfillbox (43, 190, 210, 356, 10)
	    Pic.Draw (circle, 51, 198, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (circle, 225, 198, picMerge)
	    % B3;
	    drawfillbox (390, 190, 557, 356, 10)
	    Pic.Draw (circle, 398, 198, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: C1 - C2 - C3;
	elsif c1 = 1 and c2 = 1 and c3 = 1 then
	    % C1;
	    drawfillbox (43, 16, 210, 183, 10)
	    Pic.Draw (cross, 51, 24, picMerge)
	    % C2;
	    drawfillbox (217, 16, 383, 183, 10)
	    Pic.Draw (cross, 225, 24, picMerge)
	    % C3;
	    drawfillbox (390, 16, 557, 183, 10)
	    Pic.Draw (cross, 398, 24, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: C1 - C2 - C3;
	elsif c1 = 2 and c2 = 2 and c3 = 2 then
	    % C1;
	    drawfillbox (43, 16, 210, 183, 10)
	    Pic.Draw (circle, 51, 24, picMerge)
	    % C2;
	    drawfillbox (217, 16, 383, 183, 10)
	    Pic.Draw (circle, 225, 24, picMerge)
	    % C3;
	    drawfillbox (390, 16, 557, 183, 10)
	    Pic.Draw (circle, 398, 24, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: A1 - B1 - C1;
	elsif a1 = 1 and b1 = 1 and c1 = 1 then
	    % A1;
	    drawfillbox (43, 363, 210, 530, 10)
	    Pic.Draw (cross, 51, 371, picMerge)
	    % B1;
	    drawfillbox (43, 190, 210, 356, 10)
	    Pic.Draw (cross, 51, 198, picMerge)
	    % C1;
	    drawfillbox (43, 16, 210, 183, 10)
	    Pic.Draw (cross, 51, 24, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: A1 - B1 - C1;
	elsif a1 = 2 and b1 = 2 and c1 = 2 then
	    % A1;
	    drawfillbox (43, 363, 210, 530, 10)
	    Pic.Draw (circle, 51, 371, picMerge)
	    % B1;
	    drawfillbox (43, 190, 210, 356, 10)
	    Pic.Draw (circle, 51, 198, picMerge)
	    % C1;
	    drawfillbox (43, 16, 210, 183, 10)
	    Pic.Draw (circle, 51, 24, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: A2 - B2 - C2;
	elsif a2 = 1 and b2 = 1 and c2 = 1 then
	    % A2;
	    drawfillbox (217, 363, 383, 530, 10)
	    Pic.Draw (cross, 225, 371, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (cross, 225, 198, picMerge)
	    % C2;
	    drawfillbox (217, 16, 383, 183, 10)
	    Pic.Draw (cross, 225, 24, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: A2 - B2 - C2;
	elsif a2 = 2 and b2 = 2 and c2 = 2 then
	    % A2;
	    drawfillbox (217, 363, 383, 530, 10)
	    Pic.Draw (circle, 225, 371, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (circle, 225, 198, picMerge)
	    % C2;
	    drawfillbox (217, 16, 383, 183, 10)
	    Pic.Draw (circle, 225, 24, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: A3 - B3 - C3;
	elsif a3 = 1 and b3 = 1 and c3 = 1 then
	    % A3;
	    drawfillbox (390, 363, 557, 530, 10)
	    Pic.Draw (cross, 398, 371, picMerge)
	    % B3;
	    drawfillbox (390, 190, 557, 356, 10)
	    Pic.Draw (cross, 398, 198, picMerge)
	    % C3;
	    drawfillbox (390, 16, 557, 183, 10)
	    Pic.Draw (cross, 398, 24, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: A3 - B3 - C3;
	elsif a3 = 2 and b3 = 2 and c3 = 2 then
	    % A3;
	    drawfillbox (390, 363, 557, 530, 10)
	    Pic.Draw (circle, 398, 371, picMerge)
	    % B3;
	    drawfillbox (390, 190, 557, 356, 10)
	    Pic.Draw (circle, 398, 198, picMerge)
	    % C3;
	    drawfillbox (390, 16, 557, 183, 10)
	    Pic.Draw (circle, 398, 24, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: A1 - B2 - C3;
	elsif a1 = 1 and b2 = 1 and c3 = 1 then
	    % A1;
	    drawfillbox (43, 363, 210, 530, 10)
	    Pic.Draw (cross, 51, 371, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (cross, 225, 198, picMerge)
	    % C3;
	    drawfillbox (390, 16, 557, 183, 10)
	    Pic.Draw (cross, 398, 24, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: A1 - B2 - C3;
	elsif a1 = 2 and b2 = 2 and c3 = 2 then
	    % A1;
	    drawfillbox (43, 363, 210, 530, 10)
	    Pic.Draw (circle, 51, 371, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (circle, 225, 198, picMerge)
	    % C3;
	    drawfillbox (390, 16, 557, 183, 10)
	    Pic.Draw (circle, 398, 24, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as X: A3 - B2 - C1;
	elsif a3 = 1 and b2 = 1 and c1 = 1 then
	    % A3;
	    drawfillbox (390, 363, 557, 530, 10)
	    Pic.Draw (cross, 398, 371, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (cross, 225, 198, picMerge)
	    % C1;
	    drawfillbox (43, 16, 210, 183, 10)
	    Pic.Draw (cross, 51, 24, picMerge)
	    View.Update
	    player1 := player1 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Line as O: A3 - B2 - C1;
	elsif a3 = 2 and b2 = 2 and c1 = 2 then
	    % A3;
	    drawfillbox (390, 363, 557, 530, 10)
	    Pic.Draw (circle, 398, 371, picMerge)
	    % B2;
	    drawfillbox (217, 190, 383, 356, 10)
	    Pic.Draw (circle, 225, 198, picMerge)
	    % C1;
	    drawfillbox (43, 16, 210, 183, 10)
	    Pic.Draw (circle, 51, 24, picMerge)
	    View.Update
	    player2 := player2 + 1
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	    % Check Grid for Draw;
	elsif a1 > 0 and a2 > 0 and a3 > 0 and b1 > 0 and b2 > 0 and b3 > 0 and c1 > 0 and c2 > 0 and c3 > 0 then
	    turn := 1
	    a1 := 0
	    a2 := 0
	    a3 := 0
	    b1 := 0
	    b2 := 0
	    b3 := 0
	    c1 := 0
	    c2 := 0
	    c3 := 0
	    delay (1500)
	    cls
	    exit
	end if
	% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %

	% Highlight the sqaures on mouse-over and draw X/O on mouse click;
	mousewhere (x, y, button)
	% Reset the game scores button;
	drawfillbox (615, 25, 790, 90, black)
	Font.Draw ("Restart", 620, 30, text2, white)
	if x >= 615 and y >= 25 and x <= 790 and y <= 90 then
	    drawfillbox (615, 25, 790, 90, white)
	    Font.Draw ("Restart", 620, 30, text2, black)
	    View.Update
	    if button = 1 then
		turn := 1
		player1 := 0
		player2 := 0
		a1 := 0
		a2 := 0
		a3 := 0
		b1 := 0
		b2 := 0
		b3 := 0
		c1 := 0
		c2 := 0
		c3 := 0
		cls
		exit
	    end if
	    % Square: A - 1;
	elsif x >= 43 and y >= 363 and x <= 210 and y <= 530 and a1 = 0 then
	    drawfillbox (43, 363, 210, 530, green)
	    View.Update
	    if button = 1 then
		drawfillbox (43, 363, 210, 530, black)
		if turn = 1 then
		    Pic.Draw (cross, 51, 371, picMerge)
		    View.Update
		    a1 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 51, 371, picMerge)
		    View.Update
		    a1 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if a1 = 1 or a1 = 2 then
		exit
	    elsif a1 = 0 then
		drawfillbox (43, 363, 210, 530, black)
	    end if
	    % Square: A - 2;
	elsif x >= 217 and y >= 363 and x <= 383 and y <= 530 and a2 = 0 then
	    drawfillbox (217, 363, 383, 530, green)
	    View.Update
	    if button = 1 then
		drawfillbox (217, 363, 383, 530, black)
		if turn = 1 then
		    Pic.Draw (cross, 225, 371, picMerge)
		    View.Update
		    a2 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 225, 371, picMerge)
		    View.Update
		    a2 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if a2 = 1 or a2 = 2 then
		exit
	    elsif a2 = 0 then
		drawfillbox (217, 363, 383, 530, black)
	    end if
	    % Square: A - 3;
	elsif x >= 390 and y >= 363 and x <= 557 and y <= 530 and a3 = 0 then
	    drawfillbox (390, 363, 557, 530, green)
	    View.Update
	    if button = 1 then
		drawfillbox (390, 363, 557, 530, black)
		if turn = 1 then
		    Pic.Draw (cross, 398, 371, picMerge)
		    View.Update
		    a3 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 398, 371, picMerge)
		    View.Update
		    a3 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if a3 = 1 or a3 = 2 then
		exit
	    elsif a3 = 0 then
		drawfillbox (390, 363, 557, 530, black)
	    end if
	    % Square: B - 1;
	elsif x >= 43 and y >= 190 and x <= 210 and y <= 356 and b1 = 0 then
	    drawfillbox (43, 190, 210, 356, green)
	    View.Update
	    if button = 1 then
		drawfillbox (43, 190, 210, 356, black)
		if turn = 1 then
		    Pic.Draw (cross, 51, 198, picMerge)
		    View.Update
		    b1 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 51, 198, picMerge)
		    View.Update
		    b1 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if b1 = 1 or b1 = 2 then
		exit
	    elsif b1 = 0 then
		drawfillbox (43, 190, 210, 355, black)
	    end if
	    % Square: B - 2;
	elsif x >= 217 and y >= 190 and x <= 383 and y <= 356 and b2 = 0 then
	    drawfillbox (217, 190, 383, 356, green)
	    View.Update
	    if button = 1 then
		drawfillbox (217, 190, 383, 356, black)
		if turn = 1 then
		    Pic.Draw (cross, 225, 198, picMerge)
		    View.Update
		    b2 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 225, 198, picMerge)
		    View.Update
		    b2 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if b2 = 1 or b2 = 2 then
		exit
	    elsif b2 = 0 then
		drawfillbox (217, 190, 383, 356, black)
	    end if
	    % Square: B - 3;
	elsif x >= 390 and y >= 190 and x <= 557 and y <= 356 and b3 = 0 then
	    drawfillbox (390, 190, 557, 356, green)
	    View.Update
	    if button = 1 then
		drawfillbox (390, 190, 557, 356, black)
		if turn = 1 then
		    Pic.Draw (cross, 398, 198, picMerge)
		    View.Update
		    b3 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 398, 198, picMerge)
		    View.Update
		    b3 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if b3 = 1 or b3 = 2 then
		exit
	    elsif b3 = 0 then
		drawfillbox (390, 190, 557, 356, black)
	    end if
	    % Square: C - 1;
	elsif x >= 43 and y >= 16 and x <= 210 and y <= 183 and c1 = 0 then
	    drawfillbox (43, 16, 210, 183, green)
	    View.Update
	    if button = 1 then
		drawfillbox (43, 16, 210, 183, black)
		if turn = 1 then
		    Pic.Draw (cross, 51, 24, picMerge)
		    View.Update
		    c1 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 51, 24, picMerge)
		    View.Update
		    c1 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if c1 = 1 or c1 = 2 then
		exit
	    elsif c1 = 0 then
		drawfillbox (43, 16, 210, 183, black)
	    end if
	    % Square: C - 2;
	elsif x >= 217 and y >= 16 and x <= 383 and y <= 183 and c2 = 0 then
	    drawfillbox (217, 16, 383, 183, green)
	    View.Update
	    if button = 1 then
		drawfillbox (217, 16, 383, 183, black)
		if turn = 1 then
		    Pic.Draw (cross, 225, 24, picMerge)
		    View.Update
		    c2 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 225, 24, picMerge)
		    View.Update
		    c2 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if c2 = 1 or c2 = 2 then
		exit
	    elsif c2 = 0 then
		drawfillbox (217, 16, 383, 183, black)
	    end if
	    % Square: C - 3;
	elsif x >= 390 and y >= 16 and x <= 557 and y <= 183 and c3 = 0 then
	    drawfillbox (390, 16, 557, 183, green)
	    View.Update
	    if button = 1 then
		drawfillbox (390, 16, 557, 183, black)
		if turn = 1 then
		    Pic.Draw (cross, 398, 24, picMerge)
		    View.Update
		    c3 := 1
		    turn := 2
		    exit
		elsif turn = 2 then
		    Pic.Draw (circle, 398, 24, picMerge)
		    View.Update
		    c3 := 2
		    turn := 1
		    exit
		end if
	    end if
	    if c3 = 1 or c3 = 2 then
		exit
	    elsif c3 = 0 then
		drawfillbox (390, 16, 557, 183, black)
	    end if
	end if
    end loop
end loop
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %


