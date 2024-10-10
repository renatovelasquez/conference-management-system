package dev.renvl.conferenceplatform.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
@AllArgsConstructor
public class FeedbackRequest {
    private String registrationCode;
    private String feedback;
}