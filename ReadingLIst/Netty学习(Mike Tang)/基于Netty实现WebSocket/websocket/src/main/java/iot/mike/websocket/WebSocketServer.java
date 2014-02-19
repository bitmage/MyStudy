package iot.mike.websocket;

import java.net.InetSocketAddress;
import java.util.concurrent.Executors;

import org.jboss.netty.bootstrap.ServerBootstrap;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.group.ChannelGroup;
import org.jboss.netty.channel.group.DefaultChannelGroup;
import org.jboss.netty.channel.socket.nio.NioServerSocketChannelFactory;


public class WebSocketServer {  
    private final int port;  
    public static ChannelGroup recipients = new DefaultChannelGroup();  
  
    public WebSocketServer(int port) {  
        this.port = port;  
    }  
  
    public void run() {  
        // Configure the server.  
        ServerBootstrap bootstrap = new ServerBootstrap(  
                new NioServerSocketChannelFactory(Executors  
                        .newCachedThreadPool(), Executors.newCachedThreadPool()));  
  
        // Set up the event pipeline factory.  
        bootstrap.setPipelineFactory((ChannelPipelineFactory) new WebSocketServerPipelineFactory());  
  
        // Bind and start to accept incoming connections.  
        bootstrap.bind(new InetSocketAddress(port));  
  
        System.out.println("Web socket server started at port " + port + '.');  
        System.out  
                .println("Open your browser and navigate to http://localhost:"  
                        + port + '/');  
    }  
  
    public static void main(String[] args) {  
        int port;  
        if (args.length > 0) {  
            port = Integer.parseInt(args[0]);  
        } else {  
            port = 4141;  
        }  
        new WebSocketServer(port).run();  
    }  
}  