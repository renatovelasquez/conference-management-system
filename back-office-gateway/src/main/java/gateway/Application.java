package gateway;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.cloud.gateway.config.GatewayProperties;

//import javax.annotation.PostConstruct;
//import java.lang.invoke.MethodHandles;
//import java.util.Objects;

@SpringBootApplication
public class Application {

//    private static final Logger logger = LoggerFactory.getLogger(MethodHandles.lookup().lookupClass());
//
//    private final GatewayProperties props;
//
//    public Application(GatewayProperties props) {
//        this.props = props;
//    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

//    @PostConstruct
//    public void init() {
//        logger.info(Objects.toString(props));
//    }
}
