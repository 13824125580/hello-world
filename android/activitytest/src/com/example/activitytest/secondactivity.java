package com.example.activitytest;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;

public class secondactivity extends baseactivity{
	
	public static void actionstart(Context context, String data1, String data2)
	{
		Intent intent = new Intent(context, secondactivity.class);
		intent.putExtra("param1", "data1");
		intent.putExtra("param2", "data2");
		context.startActivity(intent);
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		Log.d("secondactivity", this.toString() + "task id is " + getTaskId());
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.second_layout);
		//Intent intent = getIntent();
		//String data = intent.getStringExtra("extra_data");
		//Log.v("secondactivity", data);
		Button button2 = (Button)findViewById(R.id.button_2);
		button2.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v){
				//Intent intent = new Intent();
				//intent.putExtra("data_return", "hello firstactivity");
				//setResult(RESULT_OK, intent);
				//finish();
				//Intent intent = new Intent(secondactivity.this, firstactivity.class);
				//startActivity(intent);
				Intent intent = new Intent(secondactivity.this, thirdactivity.class);
				startActivity(intent);
			}
		});
		
	}
	
	@Override
	protected void onDestroy(){
		super.onDestroy();
		Log.d("secondactivity", "onDestroy");
	}
	@Override
	public void onBackPressed(){
		Intent intent = new Intent();
		intent.putExtra("data_return", "hello firstactivity");
		setResult(RESULT_OK, intent);
		finish();
	}

}
