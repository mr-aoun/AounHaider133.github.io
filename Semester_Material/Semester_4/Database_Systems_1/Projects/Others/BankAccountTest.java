import java.util.ArrayList;
import java.lang.System;

class BankAccount {
    private double balance;
    private ArrayList<String> transactions;

    public BankAccount() {
        balance = 0;
        transactions = new ArrayList<String>();
    }

    public void performTrans(double amount, String transactionType) {
        if (transactionType.equalsIgnoreCase("credit")) {
            balance += amount;
            transactions.add("Credit: $" + amount);
        } else if (transactionType.equalsIgnoreCase("debit")) {
            if (amount > balance) {
                System.out.println("Insufficient balance!");
            } else {
                balance -= amount;
                transactions.add("Debit: $" + amount);
            }
        } else {
            System.out.println("Invalid transaction type!");
        }
    }

    // Getters and Setters
    public double getBalance() {
        return balance;
    }

    public ArrayList<String> getTransactions() {
        return transactions;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public void setTransactions(ArrayList<String> transactions) {
        this.transactions = transactions;
    }
}
public class BankAccountTest {
    public static void main(String[] args) {
        // Create a BankAccount object
        BankAccount account = new BankAccount();

        // Perform transactions
        account.performTrans(1000, "credit");
        account.performTrans(500, "debit");
        account.performTrans(200, "credit");
        account.performTrans(300, "debit");

        // Display balance and transactions
        System.out.println("Current balance: $" + account.getBalance());
        System.out.println("Transaction history:");
        ArrayList<String> transactions = account.getTransactions();
        for (String transaction : transactions) {
            System.out.println(transaction);
        }
    }
}
