package com.example.activitytest;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;

public class activitycollector {
	public static List<Activity> activities = new ArrayList<Activity>();
	
	public static void addactivity(Activity activity){
		activities.add(activity);
	}
	
	public static void removeacctivity(Activity activity){
		activities.remove(activity);
	}
	
	public static void finishall(){
		for(Activity activity : activities)
		{
			if(!activity.isFinishing())
			{
				activity.finish();
			}
		}
	}
}
