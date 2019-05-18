import javax.swing.JOptionPane;

import org.jointheleague.graphical.robot.Robot;

public class Houses {
	static Robot turtle;

	public static void main(String[] args) 
		// TODO Auto-generated method stub
		turtle = new Robot();
		turtle.moveTo(50, 550);
		turtle.penDown();
		turtle.setPenWidth(2);

		for (int i = 0; i < 10; i++) {
			turtle.setSpeed(100);
			turtle.setRandomPenColor();
			String height = JOptionPane
					.showInputDialog("Which house would you like to draw between small,medium and large?");
			if (height.equalsIgnoreCase("small")) {
				drawsmallHouse();
			} else if (height.equalsIgnoreCase("medium")) {
				drawmediumHouse();
			} else if (height.equalsIgnoreCase("large")) {
				drawBuildings();
			}
		}

	}

	public static void pointyRoof() {
		turtle.turn(45);
		turtle.move(20);
		turtle.turn(90);
		turtle.move(20);
		turtle.turn(45);

	}

	public static void drawmediumHouse() {
		turtle.setRandomPenColor();
		turtle.move(120);
		pointyRoof();
		turtle.move(120);
		turtle.turn(-90);
		drawGrass();
	}

	public static void drawsmallHouse() {
		turtle.setRandomPenColor();
		turtle.move(60);
		pointyRoof();
		turtle.move(60);
		turtle.turn(-90);
		drawGrass();
	}

	public static void flatRoof() {
		turtle.move(20);
	}

	public static void drawBuildings() {
		turtle.setRandomPenColor();
		turtle.move(250);
		turtle.turn(90);
		flatRoof();
		turtle.turn(90);
		turtle.move(250);
		turtle.turn(-90);
		drawGrass();
	}

	public static void drawGrass() {
		turtle.setPenColor(23, 124, 65);
		turtle.move(20);
		turtle.setPenWidth(5);
		turtle.turn(-90);

	}

}
