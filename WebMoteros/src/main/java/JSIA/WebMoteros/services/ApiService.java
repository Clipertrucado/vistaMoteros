package JSIA.WebMoteros.services;

import JSIA.WebMoteros.models.LoginRequest;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ApiService {

    @Value("${api.endpoint}")
    private String apiEndpoint;

    public String sendLoginData(LoginRequest loginRequest) {
        RestTemplate restTemplate = new RestTemplate();

        try {
            return restTemplate.postForObject(apiEndpoint, loginRequest, String.class);
        } catch (Exception e) {
            return "error";
        }
    }
}

