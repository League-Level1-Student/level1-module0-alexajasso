import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URI;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class CutenessTV implements ActionListener {

	int counter = 0;
	JButton button1 = new JButton("1");
	JButton button2 = new JButton("2");
	JButton button3 = new JButton("3");

	public static void main(String[] args) {
		new CutenessTV().showButton();
	}

	public void showButton() {
		JFrame frame = new JFrame();
		frame.setVisible(true);
		JPanel panel = new JPanel();
		frame.add(panel);
		panel.add(button1);
		panel.add(button2);
		panel.add(button3);
		frame.add(panel);
		frame.pack();
		button1.addActionListener(this);
		button2.addActionListener(this);
		button3.addActionListener(this);
	}

	void showDucks() {
		playVideo("https://www.youtube.com/watch?v=MtN1YnoL46Q");
	}

	void showFrog() {
		playVideo("https://www.youtube.com/watch?v=cBkWhkAZ9ds");
	}

	void showFluffyUnicorns() {
		playVideo("https://www.youtube.com/watch?v=a-xWhG4UU_Y");
	}

	void playVideo(String videoID) {
		try {
			URI uri = new URI(videoID);
			java.awt.Desktop.getDesktop().browse(uri);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if (e.getSource() == button1) {
			playVideo("https://www.youtube.com/watch?v=MtN1YnoL46Q");
		} else if (e.getSource() == button2) {
			playVideo("https://www.youtube.com/watch?v=cBkWhkAZ9ds");
		} else if (e.getSource() == button3) {
			playVideo("https://www.youtube.com/watch?v=a-xWhG4UU_Y");
		}
	}

}
