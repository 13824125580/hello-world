package com.example.litstviewtest;

import java.util.List;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class fruitadapter extends ArrayAdapter<fruit>{
	private int resourceid;
	
	public fruitadapter(Context context, int textviewresourceid, List<fruit> objects){
		super(context, textviewresourceid, objects);
		resourceid = textviewresourceid;
	}
	
	@Override
	public View getView(int position, View convertview, ViewGroup parent){
		fruit frt = getItem(position);
		View view;
		viewholder viewholder;
		
		if(convertview == null)
		{
			view = LayoutInflater.from(getContext()).inflate(resourceid, null);
			viewholder = new viewholder();
			viewholder.fruitimage = (ImageView)view.findViewById(R.id.fruit_image);
			viewholder.fruitname = (TextView)view.findViewById(R.id.fruit_name);
			view.setTag(viewholder);
		}
		else
		{
			view = convertview;
			viewholder = (viewholder)view.getTag();
		}
		
		viewholder.fruitimage.setImageResource(frt.getimageid());
		viewholder.fruitname.setText(frt.getname());
		return view;
	}
	
	
	class viewholder{
		ImageView fruitimage;
		TextView fruitname;
	}
}
