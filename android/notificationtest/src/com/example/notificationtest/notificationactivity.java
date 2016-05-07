package com.example.notificationtest;

import android.app.Activity;
import android.app.NotificationManager;
import android.os.Bundle;

public class notificationactivity extends Activity{
	
	@Override
	protected void onCreate(Bundle savedinstancestate){
		super.onCreate(savedinstancestate);
		setContentView(R.layout.notification_layout);
		NotificationManager manager = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
		manager.cancel(1);
	}
}
