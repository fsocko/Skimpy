package BusinessLogic;

import java.sql.ResultSet;
import java.util.ArrayList;

public class Recommend {
	
	private double caloriesRec;
	private double proteinsRec;
	private double carbsRec;
	private double sugarsRec;
	private double fatsRec;
	private double saturatesRec;
	private double fibreRec;
	private double saltRec;
	
	private boolean calOpt;
	private boolean protOpt;
	private boolean carbsOpt;
	private boolean sugarsOpt;
	private boolean fatsOpt;
	private boolean saturatesOpt;
	private boolean fibreOpt;
	private boolean saltOpt;
	
	private Person user = null;
	private int currDay;
	private GDA userMacros = null;
	
	public Recommend(){
		caloriesRec = 0;
		proteinsRec = 0;
		carbsRec = 0;
		sugarsRec = 0;
		fatsRec = 0;
		saturatesRec = 0;
		fibreRec = 0;
		saltRec = 0;
	}
	
	public Recommend(Person user, int day){
		
		this.user = user;
		userMacros = new GDA(user);
		this.currDay = day;

		setCal(dayMeal());
		setProt(dayMeal());
		setCarbs(dayMeal());
		setSugars(dayMeal());
		setFats(dayMeal());
		setSats(dayMeal());
		setFibre(dayMeal());
		setSalt(dayMeal());
		
		
	}
	
	public boolean checkOpt(double userUnit, double recUnit){
		
		double max = recUnit * 1.2;
		double min = recUnit * 0.8;
		
		if(userUnit > max || userUnit < min){
			return true;
		}
		else{
			return false;
		}
		
	}
	
	public ArrayList<Meal> dayMeal(){
		ArrayList<Meal> dayMeal = new ArrayList<Meal>();
		dayMeal.add(user.getMealplan().getMeal(currDay, 0));
		dayMeal.add(user.getMealplan().getMeal(currDay, 1));
		dayMeal.add(user.getMealplan().getMeal(currDay, 2));
		
		return dayMeal;
	}
	
	public void setCal(ArrayList<Meal> dayMeal){
		int cals = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				cals += f.getCalories();
			}
		}
		this.caloriesRec = cals - userMacros.getCalories();
		
		calOpt = checkOpt(cals, userMacros.getCalories());
	}
	
	public void setProt(ArrayList<Meal> dayMeal){
		int prot = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				prot += f.getProteins();
			}
		}
		this.proteinsRec = prot - userMacros.getProtein();
		
		protOpt = checkOpt(prot, userMacros.getProtein());
		
	}
	
	public void setCarbs(ArrayList<Meal> dayMeal){
		int carbs = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				carbs += f.getCarbs();
			}
		}
		this.carbsRec = carbs - userMacros.getCarbs();
		
		carbsOpt = checkOpt(carbs, userMacros.getCarbs());
	}
	
	public void setSugars(ArrayList<Meal> dayMeal){
		int sugars = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				sugars += f.getSugars();
			}
		}
		this.sugarsRec = sugars - userMacros.getSugars();
		
		sugarsOpt = checkOpt(sugars, userMacros.getSugars());
	}
	
	public void setFats(ArrayList<Meal> dayMeal){
		int fats = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				fats += f.getFats();
			}
		}
		this.fatsRec = fats - userMacros.getFat();
		
		fatsOpt = checkOpt(fats, userMacros.getFat());
	}
	
	public void setSats(ArrayList<Meal> dayMeal){
		int sats = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				sats += f.getSaturates();
			}
		}
		this.saturatesRec = sats - userMacros.getSaturates();
		
		saturatesOpt = checkOpt(sats, userMacros.getSaturates());
	}
	
	public void setFibre(ArrayList<Meal> dayMeal){
		int fibre = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				fibre += f.getFibre();
			}
		}
		this.fibreRec = fibre - userMacros.getFibre();
		
		fibreOpt = checkOpt(fibre, userMacros.getFibre());
	}
	
	public void setSalt(ArrayList<Meal> dayMeal){
		int salt = 0;
		for(Meal m : dayMeal){
			for(Food f : m.getIngredients()){
				salt += f.getSalt();
			}
		}
		this.saltRec = salt - userMacros.getSalt();
		
		saltOpt = checkOpt(salt, userMacros.getSalt());
	}
	
	public double getCaloriesRec(){
		return caloriesRec;
	}
	
	public double getProteinsRec(){
		return proteinsRec;
	}
	
	public double getCarbsRec(){
		return carbsRec;
	}
	
	public double getSugarsRec(){
		return sugarsRec;
	}
	
	public double getFatsRec(){
		return fatsRec;
	}
	
	public double getSaturatesRec(){
		return saturatesRec;
	}
	
	public double getFibreRec(){
		return fibreRec;
	}
	
	public double getSaltRec(){
		return saltRec;
	}
}
