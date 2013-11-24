package iot.mike.websocket;

import static org.jboss.netty.handler.codec.http.HttpHeaders.isKeepAlive;
import static org.jboss.netty.handler.codec.http.HttpHeaders.setContentLength;
import static org.jboss.netty.handler.codec.http.HttpMethod.GET;
import static org.jboss.netty.handler.codec.http.HttpResponseStatus.FORBIDDEN;
import static org.jboss.netty.handler.codec.http.HttpVersion.HTTP_1_1;

import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpHeaders;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.http.websocketx.CloseWebSocketFrame;
import org.jboss.netty.handler.codec.http.websocketx.PingWebSocketFrame;
import org.jboss.netty.handler.codec.http.websocketx.PongWebSocketFrame;
import org.jboss.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import org.jboss.netty.handler.codec.http.websocketx.WebSocketFrame;
import org.jboss.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import org.jboss.netty.handler.codec.http.websocketx.WebSocketServerHandshakerFactory;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.CharsetUtil;

  
public class WebSocketServerHandler extends SimpleChannelUpstreamHandler {  
    private static final InternalLogger logger = InternalLoggerFactory  
            .getInstance(WebSocketServerHandler.class);  
  
    private static final String WEBSOCKET_PATH = "/websocket";  
  
    private WebSocketServerHandshaker handshaker;  
  
    @Override  
    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e)  
            throws Exception {  
        // 处理接受消息  
        Object msg = e.getMessage();  
        if (msg instanceof HttpRequest) {  
            handleHttpRequest(ctx, (HttpRequest) msg);  
        } else if (msg instanceof WebSocketFrame) {  
            handleWebSocketFrame(ctx, (WebSocketFrame) msg);  
        }  
    }  
  
    @Override  
    public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e)  
            throws Exception {  
        // 处理异常情况  
        e.getCause().printStackTrace();  
        e.getChannel().close();  
    }  
  
    private void handleHttpRequest(ChannelHandlerContext ctx, HttpRequest req)  
            throws Exception {  
        // 只接受 HTTP GET 请求  
        if (req.getMethod() != GET) {  
            sendHttpResponse(ctx, req, new DefaultHttpResponse(HTTP_1_1,  
                    FORBIDDEN));  
            return;  
        }  
  
        // Websocket 握手开始  
        WebSocketServerHandshakerFactory wsFactory = 
        		new WebSocketServerHandshakerFactory(  
        				getWebSocketLocation(req), null, false);  
        handshaker = wsFactory.newHandshaker(req);  
        if (handshaker == null) {  
            wsFactory.sendUnsupportedWebSocketVersionResponse(ctx.getChannel());  
        } else {  
            handshaker.handshake(ctx.getChannel(), req).addListener(  
                    WebSocketServerHandshaker.HANDSHAKE_LISTENER);  
        }  
    }  
  
    private void handleWebSocketFrame(ChannelHandlerContext ctx,  
            WebSocketFrame frame) {  
        //Websocket 握手结束  
        if (frame instanceof CloseWebSocketFrame) {  
            handshaker.close(ctx.getChannel(), (CloseWebSocketFrame) frame);  
            return;  
        } else if (frame instanceof PingWebSocketFrame) {  
            ctx.getChannel().write(new PongWebSocketFrame(frame.getBinaryData()));  
            return;  
        } else if (!(frame instanceof TextWebSocketFrame)) {  
            throw new UnsupportedOperationException(String.format("%s frame types not supported",  
                    frame.getClass().getName()));  
        }  
  
        // 处理接受到的数据（转成大写）并返回  
        String request = "From Server : " + ((TextWebSocketFrame) frame).getText();  
        if (logger.isDebugEnabled()) {  
            logger.debug(String.format("Channel %s received %s", ctx.getChannel().getId(), request));  
        }  
        ctx.getChannel().write(new TextWebSocketFrame(request.toUpperCase()));  
    }  
  
    private static void sendHttpResponse(ChannelHandlerContext ctx,  
            HttpRequest req, HttpResponse res) {  
        // 返回 HTTP 错误页面  
        if (res.getStatus().getCode() != 200) {  
            res.setContent(ChannelBuffers.copiedBuffer(res.getStatus().toString(), CharsetUtil.UTF_8));  
            setContentLength(res, res.getContent().readableBytes());  
        }  
  
        // 发送返回信息并关闭连接  
        ChannelFuture f = ctx.getChannel().write(res);  
        if (!isKeepAlive(req) || res.getStatus().getCode() != 200) {  
            f.addListener(ChannelFutureListener.CLOSE);  
        }  
    }  
  
    private static String getWebSocketLocation(HttpRequest req) {  
    	System.out.println("ws://" + req.getHeader(HttpHeaders.Names.HOST) + WEBSOCKET_PATH);
        return "ws://" + req.getHeader(HttpHeaders.Names.HOST) + WEBSOCKET_PATH;  
    }  
}  