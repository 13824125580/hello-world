class helloworld {
	private native String getline(String prompt);
	private native void print();

	static {
		System.loadLibrary("helloworld");
	}

	public static void main(String args[]){
		helloworld p = new helloworld();
		p.print();
		String input = p.getline("type a line:");
		System.out.println("user typed:" + input);
	}
}
