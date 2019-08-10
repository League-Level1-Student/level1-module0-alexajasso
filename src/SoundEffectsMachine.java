import java.applet.AudioClip;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JApplet;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class SoundEffectsMachine implements ActionListener {
	JButton button1;
	JButton button2;
	JButton button3;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new SoundEffectsMachine().showButton();
	}

	public void showButton() {
		JFrame frame = new JFrame();
		frame.setVisible(true);
		JPanel panel = new JPanel();
		frame.add(panel);
		button1 = new JButton("1");
		button2 = new JButton("2");
		button3 = new JButton("3");
		panel.add(button1);
		panel.add(button2);
		panel.add(button3);
		frame.add(panel);
		frame.pack();
		button1.addActionListener(this);
		button2.addActionListener(this);
		button3.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		// playSound ("service-bell_daniel_simion.wav");
		if (e.getSource() == button1) {
			playSound("service-bell_daniel_simion.wav");
		} else if (e.getSource() == button2) {
			playSound("water-drops-daniel_simon.wav");
		} else if (e.getSource() == button3) {
			playSound("old-fashioned-school-bell-daniel_simon.wav");
		}

		{

		}
	}

	private void playSound(String fileName) {
		AudioClip sound = JApplet.newAudioClip(getClass().getResource(fileName));
		sound.play();
	}
}
