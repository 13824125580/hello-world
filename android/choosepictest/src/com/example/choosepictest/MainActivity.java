package com.example.choosepictest;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;


public class MainActivity extends Activity {
	public static final int TAKE_PTOTO = 1;
	public static final int CROP_PHOTO = 2;
	
	private Button takephoto;
	private ImageView picture;
	private Uri imgeuri;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        takephoto = (Button) findViewById(R.id.take_photo);
        picture = (ImageView) findViewById(R.id.picture);
        takephoto.setOnClickListener(new OnClickListener() {
        	@Override
        	public void onClick(View v){
        		File outputimage = new File(Environment.getExternalStorageDirectory(), "output_image.jpg");
        		try{
        			if(outputimage.exists()){
        				outputimage.delete();
        			}
        			outputimage.createNewFile();
        		} catch(IOException e){
        			e.printStackTrace();
        		}
        		
        		imgeuri = Uri.fromFile(outputimage);
        		Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        		intent.putExtra(MediaStore.EXTRA_OUTPUT, imgeuri);
        		startActivityForResult(intent, TAKE_PTOTO);
        	}
        });
    }
    
    @Override
    protected void onActivityResult(int requestcode, int resultcode, Intent data){
    	switch(requestcode){
    	case TAKE_PTOTO:
    		if(resultcode == RESULT_OK){
    			Intent intent = new Intent("com.android.camera.action.CROP");
    			intent.setDataAndType(imgeuri, "image/*");
    			intent.putExtra("scale", true);
    			intent.putExtra(MediaStore.EXTRA_OUTPUT, imgeuri);
    			startActivityForResult(intent, CROP_PHOTO);
    		}
    		break;
    	case CROP_PHOTO:
    		if(resultcode == RESULT_OK){
    			try {
    				Bitmap bitmap = BitmapFactory.decodeStream(getContentResolver().openInputStream(imgeuri));
    				picture.setImageBitmap(bitmap);
    			}catch (FileNotFoundException e){
    				e.printStackTrace();
    			}
    		}
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
