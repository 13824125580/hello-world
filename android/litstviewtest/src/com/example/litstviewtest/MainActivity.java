package com.example.litstviewtest;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;


public class MainActivity extends Activity {

	private String[] data = {"apple", "banana", "orange", "watermelon", "pear", "grape", "pineapple", 
			"strawberry", "cherry", "mango"};
	private List<fruit> fruitlist = new ArrayList<fruit>();
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initfruits();
        fruitadapter adapter = new fruitadapter(MainActivity.this, R.layout.fruit_item, fruitlist);
        ListView listview = (ListView) findViewById(R.id.list_view);
        listview.setAdapter(adapter);
        listview.setOnItemClickListener(new OnItemClickListener() {
        	@Override
        	public void onItemClick(AdapterView<?> parent, View view, int position, long id){
        		fruit fruit = fruitlist.get(position);
        		Toast.makeText(MainActivity.this, fruit.getname(), Toast.LENGTH_SHORT).show();
        	}
        });
    }
    
    private void initfruits(){
    	fruit apple = new fruit("apple", R.drawable.ic_launcher);
    	fruitlist.add(apple);
    	fruit banana = new fruit("banana", R.drawable.ic_launcher);
    	fruitlist.add(banana);
    	fruit orange = new fruit("orange", R.drawable.ic_launcher);
    	fruitlist.add(orange);
    	fruit watermelon = new fruit("watermelon", R.drawable.ic_launcher);
    	fruitlist.add(watermelon);
    	fruit pear = new fruit("pear", R.drawable.ic_launcher);
    	fruitlist.add(pear);
    	fruit grape = new fruit("grape", R.drawable.ic_launcher);
    	fruitlist.add(grape);
    	fruit pineapple = new fruit("pineapple", R.drawable.ic_launcher);
    	fruitlist.add(pineapple);
    	fruit strawberry = new fruit("strawberry", R.drawable.ic_launcher);
    	fruitlist.add(strawberry);
    	fruit cherry = new fruit("cherry", R.drawable.ic_launcher);
    	fruitlist.add(cherry);
    	fruit mango = new fruit("mango", R.drawable.ic_launcher);
    	fruitlist.add(mango);
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
