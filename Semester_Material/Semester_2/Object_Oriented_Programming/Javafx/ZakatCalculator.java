import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class ZakatCalculator extends Application {
	Scene scene;
    
	@Override
	public void start(Stage primaryStage) {
			
		primaryStage.setTitle("Zakat Calculator");
		TextField gAmt, gRate, gTotal, sAmt, sRate, 
				sTotal, cash, loan, malTijarat, netWorth, zDue;
		Button calcZakat = new Button("Calculate Zakat");
		gAmt = new TextField();
		gRate = new TextField();
		gTotal = new TextField();
		sAmt = new TextField();
		sRate = new TextField();
		sTotal = new TextField();
		cash = new TextField();
		loan = new TextField();
		malTijarat = new TextField();
		netWorth = new TextField();
		zDue = new TextField();
		
		GridPane pane = new GridPane();
		pane.setAlignment(Pos.CENTER);
		pane.setPadding(new Insets(11.5, 12.5, 13.5, 14.5));
		pane.setHgap(5.5);

		pane.add(new Label("Gold(gms):"), 0, 0);
		pane.add(gAmt, 1, 0);
		pane.add(new Label("Rate/gm :"),2,0);
		pane.add(gRate,3, 0);
		pane.add(new Label("Gold value = "),4,0);
		pane.add(gTotal, 5, 0);
		
		pane.add(new Label("Silver(gms):"), 0, 1);
		pane.add(sAmt, 1, 1);
		pane.add(new Label("Rate/gm :"),2,1);
		pane.add(sRate,3, 1);
		pane.add(new Label("Silver value = "),4,1);
		pane.add(sTotal, 5, 1);
		pane.add(new Label("Mal-e-Tijarat Value = "), 4, 2);
		pane.add(malTijarat, 5, 2);		
		pane.add(new Label("Cash = "), 4, 3);
		pane.add(cash, 5, 3);				
		pane.add(new Label("Debt/Loan = "), 4, 4);
		pane.add(loan, 5, 4);		
		pane.add(new Label("Net worth = "), 4, 5);
		pane.add(netWorth, 5, 5);
		calcZakat.setOnAction(new EventHandler<ActionEvent>() {
			@Override
			public void handle(ActionEvent event) {
				int gVal, sVal, totalval, zakatableAmount;
				gVal = Integer.parseInt(gAmt.getText())*Integer.parseInt(gRate.getText());
				sVal = Integer.parseInt(sAmt.getText())*Integer.parseInt(sRate.getText());
				gTotal.setText(""+gVal);
				sTotal.setText(""+sVal);
				totalval = gVal + sVal + Integer.parseInt(malTijarat.getText())+
							Integer.parseInt(cash.getText());
				zakatableAmount = totalval - Integer.parseInt(loan.getText());
				netWorth.setText(""+zakatableAmount);
				if ( zakatableAmount > 100000 )
					zDue.setText(""+zakatableAmount*0.025);
				else
					zDue.setText("0");
			}			
		});
		pane.add(calcZakat, 3,6);
		pane.add(new Label("Zakat due = "), 4, 6);
		pane.add(zDue, 5, 6);				
		scene= new Scene(pane);
		primaryStage.setScene(scene);
		primaryStage.show();		

		
	} // end of start method

} // end of class ZakatCalculator
