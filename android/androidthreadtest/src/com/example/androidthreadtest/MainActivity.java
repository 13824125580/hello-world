package com.example.androidthreadtest;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;


public class MainActivity extends Activity implements OnClickListener{

	private TextView text;
	private Button changetext;
	public static final int UPDATE_TEXT = 1;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        text = (TextView)findViewById(R.id.text);
        changetext = (Button)findViewById(R.id.change_text);
        changetext.setOnClickListener(this);
        MyThread mythread = new MyThread();
        new Thread(mythread).start();
    }

    private Handler handler = new Handler() {
    	public void handleMessage(Message msg){
    		switch(msg.what){
    		case UPDATE_TEXT:
    			text.setText("nice to meet you");
    			Toast toast = Toast.makeText(getApplicationContext(), "Ĭ��Toast��ʽ", Toast.LENGTH_SHORT);
    			toast.setGravity(Gravity.CENTER, 0, 0);
    			toast.show();
    			break;
    		default:
    			break;
    		}
    	}
    };
    
    @Override
    public void onClick(View v){
    	switch(v.getId()){
    	case R.id.change_text:
    		new Thread(new Runnable(){
    			@Override
    			public void run(){
    			//	Message message = new Message();
    			//	message.what = UPDATE_TEXT;
    			//	handler.sendMessage(message);
    			}
    		}).start();
    		break;
    	 default:
    		 break;
    	}
    }
    
    class MyThread implements Runnable {
    	@Override
    	public void run(){
    		
    		while(true){
				Message message = new Message();
				message.what = UPDATE_TEXT;
				handler.sendMessage(message);
				Log.d("message", "sendmessage");
				try {                 
						Thread.sleep(500);                 
				} 
				catch (NumberFormatException e) 
				{                
					e.printStackTrace();                 
				} 
				catch (InterruptedException e) 
				{                           
					e.printStackTrace();                 
				}  
			}
    	}
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
