package com.example.uibestpractice;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;


public class MainActivity extends Activity {

	private ListView msglistview;
	private EditText inputtext;
	private Button send;
	private msgadapter adapter;
	
	private List<msg> msglist = new ArrayList<msg>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initmsgs();
        
        adapter = new msgadapter(MainActivity.this, R.layout.msg_item, msglist);
        inputtext = (EditText) findViewById(R.id.input_text);
        send = (Button) findViewById(R.id.send);
        msglistview = (ListView) findViewById(R.id.msg_list_view);
        msglistview.setAdapter(adapter);
        send.setOnClickListener(new OnClickListener(){
        	@Override
        	public void onClick(View v){
        		String content = inputtext.getText().toString();
        		if(!"".equals(content)){
        			msg mg = new msg(content, msg.TYPE_SENT);
        			msglist.add(mg);
        			adapter.notifyDataSetChanged();
        			msglistview.setSelection(msglist.size());
        			inputtext.setText("");
        		}
        	}
        });
    }

    private void initmsgs()
    {
    	msg mg1 = new msg("hello guy", msg.TYPE_RECEIVED);
    	msglist.add(mg1);
    	msg mg2 = new msg("hello, who is that?", msg.TYPE_SENT);
    	msglist.add(mg2);
    	msg mg3 = new msg("this is tom, nice talking to you.",msg.TYPE_RECEIVED);
    	msglist.add(mg3);
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
