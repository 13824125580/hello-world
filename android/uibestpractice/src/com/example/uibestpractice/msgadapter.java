package com.example.uibestpractice;

import java.util.List;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

public class msgadapter extends ArrayAdapter<msg>{
	private int resourceid;
	
	public msgadapter(Context context, int textviewresourceid, List<msg> objects){
		super(context, textviewresourceid, objects);
		resourceid = textviewresourceid;
	}
	
	@Override
	public View getView(int position, View convertview, ViewGroup parent){
		msg mg = getItem(position);
		View view;
		ViewHolder viewholder;
		
		if(convertview == null){
			view = LayoutInflater.from(getContext()).inflate(resourceid,  null);
			viewholder = new ViewHolder();
			viewholder.leftlayout = (LinearLayout) view.findViewById(R.id.left_layout);
			viewholder.rightlayout = (LinearLayout) view.findViewById(R.id.right_layout);
			
			viewholder.leftmsg = (TextView) view.findViewById(R.id.left_msg);
			viewholder.rightmsg = (TextView) view.findViewById(R.id.right_msg);
			view.setTag(viewholder);
		}
		else
		{
			view = convertview;
			viewholder = (ViewHolder)view.getTag();
		}
		
		if(mg.gettype() == mg.TYPE_RECEIVED){
			viewholder.leftlayout.setVisibility(view.VISIBLE);
			viewholder.rightlayout.setVisibility(view.GONE);
			viewholder.leftmsg.setText(mg.getcontent());
		} else if(mg.gettype() == mg.TYPE_SENT){
			viewholder.rightlayout.setVisibility(view.VISIBLE);
			viewholder.leftlayout.setVisibility(view.GONE);
			viewholder.rightmsg.setText(mg.getcontent());
		}
		
		return view;
	}
	
	class ViewHolder{
		LinearLayout leftlayout;
		LinearLayout rightlayout;
		
		TextView leftmsg;
		TextView rightmsg;
	}

}
