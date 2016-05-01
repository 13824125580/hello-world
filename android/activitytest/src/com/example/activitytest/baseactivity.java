package com.example.activitytest;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class baseactivity extends Activity{

	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		Log.d("baseactivity", getClass().getSimpleName());
		activitycollector.addactivity(this);
	}
	
	@Override
	protected void onDestroy(){
		super.onDestroy();
		activitycollector.removeacctivity(this);
	}

}
