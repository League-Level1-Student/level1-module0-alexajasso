import org.jointheleague.graphical.robot.Robot;

public class Houses {
	static Robot turtle = new Robot();
	Houses pointy = new Houses();
	Houses flat = new Houses();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		
		

	}
	public void pointyRoof(){
		turtle.turn(45);
		turtle.move(90);
		turtle.turn (45);
		turtle.move(90);
	}
	
	public void drawHouse() {
		turtle.moveTo(50, 550);
		turtle.move(100);
		pointy.pointyRoof();
	}
	public void flatRoof() {
		turtle.move(90);
	}
	public void drawBuildings() {
		turtle.move(300);
		turtle.turn(90);
		flat.flatRoof();
	}
	
	
	
	
	
	
	
	

}
