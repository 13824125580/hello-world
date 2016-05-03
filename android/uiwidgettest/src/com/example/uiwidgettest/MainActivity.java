package com.example.uiwidgettest;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;


public class MainActivity extends Activity implements OnClickListener {

	private Button button;
	private EditText edittext;
	private ImageView imageview;
	private ProgressBar progressbar;
	
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button = (Button)findViewById(R.id.button);
        edittext = (EditText) findViewById(R.id.edit_text);
        imageview = (ImageView)findViewById(R.id.image_view);
        progressbar=(ProgressBar)findViewById(R.id.progress_bar);
        button.setOnClickListener(this);
    }

    @Override
    public void onClick(View v){
    	switch(v.getId()){
    	case R.id.button:
    		//String inputtext = edittext.getText().toString();
    		//Toast.makeText(MainActivity.this, "you clicked button", Toast.LENGTH_SHORT).show();
    		//Toast.makeText(MainActivity.this, inputtext, Toast.LENGTH_SHORT).show();
    		//imageview.setImageResource(R.drawable.suckfeet);
    		//if(progressbar.getVisibility() == View.GONE){
    		//	progressbar.setVisibility(View.VISIBLE);
    		//}else{
    		//	progressbar.setVisibility(View.GONE);
    		//}
    		
    		//int progress = progressbar.getProgress();
    		//progress = progress + 10;
    		//progressbar.setProgress(progress);
    		//break;
    		//AlertDialog.Builder dialog = new AlertDialog.Builder(MainActivity.this);
    		//dialog.setTitle("this is dialog");
    		//dialog.setMessage("something important");
    		//dialog.setCancelable(false);
    		//dialog.setPositiveButton("OK", new DialogInterface.OnClickListener(){
    		//@Override
    		//public void onClick(DialogInterface dialog, int which){
    				
    		//  }
    		//});
    		
    		//dialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener(){
    			
    			//@Override
    			//public void onClick(DialogInterface dialog, int which){
    				
    			//}
    		//});
    		//dialog.show();
    			ProgressDialog progressdialog = new ProgressDialog(MainActivity.this);
    			progressdialog.setTitle("This is ProgressDialog");
    			progressdialog.setMessage("Loading...");
    			progressdialog.setCancelable(true);
    			progressdialog.show();
    			break;
    		default:
    			break;
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
