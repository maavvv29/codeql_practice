package generatedtest;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.charset.Charset;

// Test case generated by GenerateFlowTestCase.ql
public class Test {

	Object source() {
		return null;
	}

	void sink(Object o) {}

	public void test() throws Exception {

		{
			// "java.net;InetAddress;true;getByName;(String);;Argument[0];ReturnValue;taint;ai-generated"
			InetAddress out = null;
			String in = (String) source();
			out = InetAddress.getByName(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;InetSocketAddress;true;InetSocketAddress;(String,int);;Argument[0];Argument[-1];taint;ai-generated"
			InetSocketAddress out = null;
			String in = (String) source();
			out = new InetSocketAddress(in, 0);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;InetSocketAddress;true;createUnresolved;(String,int);;Argument[0];ReturnValue;taint;ai-generated"
			InetSocketAddress out = null;
			String in = (String) source();
			out = InetSocketAddress.createUnresolved(in, 0);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;URI;(String);;Argument[0];Argument[-1];taint;manual"
			URI out = null;
			String in = (String) source();
			out = new URI(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;create;;;Argument[0];ReturnValue;taint;manual"
			URI out = null;
			String in = (String) source();
			out = URI.create(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;resolve;(String);;Argument[0];ReturnValue;taint;ai-generated"
			URI out = null;
			String in = (String) source();
			URI instance = null;
			out = instance.resolve(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;resolve;(URI);;Argument[0];ReturnValue;taint;ai-generated"
			URI out = null;
			URI in = (URI) source();
			URI instance = null;
			out = instance.resolve(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;toASCIIString;;;Argument[-1];ReturnValue;taint;manual"
			String out = null;
			URI in = (URI) source();
			out = in.toASCIIString();
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;toString;;;Argument[-1];ReturnValue;taint;manual"
			String out = null;
			URI in = (URI) source();
			out = in.toString();
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URI;false;toURL;;;Argument[-1];ReturnValue;taint;manual"
			URL out = null;
			URI in = (URI) source();
			out = in.toURL();
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URL;false;URL;(String);;Argument[0];Argument[-1];taint;manual"
			URL out = null;
			String in = (String) source();
			out = new URL(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URL;false;URL;(URL,String);;Argument[0];Argument[-1];taint;ai-generated"
			URL out = null;
			URL in = (URL) source();
			out = new URL(in, null);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URL;false;URL;(URL,String);;Argument[1];Argument[-1];taint;ai-generated"
			URL out = null;
			String in = (String) source();
			out = new URL(null, in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URL;false;toExternalForm;;;Argument[-1];ReturnValue;taint;manual"
			String out = null;
			URL in = (URL) source();
			out = in.toExternalForm();
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URL;false;toURI;;;Argument[-1];ReturnValue;taint;manual"
			URI out = null;
			URL in = (URL) source();
			out = in.toURI();
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URLDecoder;false;decode;;;Argument[0];ReturnValue;taint;manual"
			String out = null;
			String in = (String) source();
			out = URLDecoder.decode(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URLDecoder;false;decode;;;Argument[0];ReturnValue;taint;manual"
			String out = null;
			String in = (String) source();
			out = URLDecoder.decode(in, (Charset) null);
			sink(out); // $ hasTaintFlow
		}
		{
			// "java.net;URLDecoder;false;decode;;;Argument[0];ReturnValue;taint;manual"
			String out = null;
			String in = (String) source();
			out = URLDecoder.decode(in, (String) null);
			sink(out); // $ hasTaintFlow
		}

	}

}
