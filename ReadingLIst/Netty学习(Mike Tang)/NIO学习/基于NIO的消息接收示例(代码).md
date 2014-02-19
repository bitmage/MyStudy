基于NIO的消息接收实例(代码)
---
ChatServer.java
```
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
 
/** 
 * @author mike
 * @date: 2013-10-30
 */ 
public class ChatServer { 
    private Selector selector; 
    private ByteBuffer readBuffer = ByteBuffer.allocate(2);
    //调整缓存的大小可以看到打印输出的变化 
    private Map<SocketChannel, byte[]> clientMessage = 
    		new ConcurrentHashMap<SocketChannel, byte[]>(); 
 
    public void start() throws IOException { 
        ServerSocketChannel 	ssc 		= ServerSocketChannel.open();
        						selector 	= Selector.open(); 
        						
        ssc.configureBlocking(false); 
        ssc.bind(new InetSocketAddress("localhost", 8001)); 
        ssc.register(selector, SelectionKey.OP_ACCEPT); 
        while (!Thread.currentThread().isInterrupted()) { 
            selector.select(); 
            Set<SelectionKey> keys = selector.selectedKeys(); 
            Iterator<SelectionKey> keyIterator = keys.iterator(); 
            while (keyIterator.hasNext()) { 
            	System.out.println("Change Channel!");
                SelectionKey key = keyIterator.next(); 
                if (!key.isValid()) { 
                    continue; 
                } 
                if (key.isAcceptable()) { 
                    accept(key); 
                } else if (key.isReadable()) { 
                    read(key); 
                } 
                keyIterator.remove(); 
            } 
        } 
    } 
 
    private void read(SelectionKey key) throws IOException { 
        SocketChannel socketChannel = (SocketChannel) key.channel(); 
        this.readBuffer.clear(); 
        int numRead; 
        try { 
            numRead = socketChannel.read(this.readBuffer); 
        } catch (IOException e) { 
            key.cancel(); 
            socketChannel.close(); 
            clientMessage.remove(socketChannel); 
            return; 
        } 
        byte[] bytes = clientMessage.get(socketChannel); 
        if (bytes == null) { 
            bytes = new byte[0]; 
        } 
        if (numRead > 0) { 
            byte[] newBytes = new byte[bytes.length + numRead]; 
            System.arraycopy(bytes, 0, newBytes, 0, bytes.length); 
            System.arraycopy(readBuffer.array(), 0, newBytes, bytes.length, numRead); 
            clientMessage.put(socketChannel, newBytes); 
            System.out.println(new String(newBytes)); 
        } else { 
            String message = new String(bytes); 
            System.out.println(message); 
        } 
    } 
 
    private void accept(SelectionKey key) throws IOException { 
        ServerSocketChannel ssc = (ServerSocketChannel) key.channel(); 
        SocketChannel clientChannel = ssc.accept(); 
        clientChannel.configureBlocking(false); 
        clientChannel.register(selector, SelectionKey.OP_READ); 
        System.out.println("a new client connected"); 
    } 
 
 
    public static void main(String[] args) throws IOException { 
        System.out.println("server started..."); 
        new ChatServer().start(); 
    } 
} 
```

ChatClient.java
```
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;
 
/** 
 * @author mike
 * @date: 2013-10-30
 */ 
public class ChatClient { 
 
    public void start() throws IOException { 
        SocketChannel       sc          = SocketChannel.open(); 
        Selector            selector    = Selector.open(); 
        Scanner             scanner     = new Scanner(System.in);
        
        sc.configureBlocking(false); 
        sc.connect(new InetSocketAddress("localhost", 8001)); 
        sc.register(selector, SelectionKey.OP_CONNECT); 
        while (true) { 
            selector.select(); 
            Set<SelectionKey> keys = selector.selectedKeys(); 
            System.out.println("keys=" + keys.size()); 
            Iterator<SelectionKey> keyIterator = keys.iterator(); 
            while (keyIterator.hasNext()) { 
                SelectionKey key = keyIterator.next(); 
                keyIterator.remove(); 
                if (key.isConnectable()) { 
                    sc.finishConnect(); 
                    sc.register(selector, SelectionKey.OP_WRITE); 
                    System.out.println("server connected..."); 
                    break; 
                } else if (key.isWritable()) { 
                    System.out.println("please input message"); 
                    String message = scanner.nextLine(); 
                    ByteBuffer writeBuffer = ByteBuffer.wrap(message.getBytes()); 
                    sc.write(writeBuffer); 
                } 
            } 
        }
    } 
 
    public static void main(String[] args) throws IOException { 
        new ChatClient().start(); 
    } 
} 
```