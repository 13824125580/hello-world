class helloworld {
	static {
		System.loadLibrary("helloworld");
	}
	
	private native void print();

	public static void main(String args[]){
		new helloworld().print();
	}
}
