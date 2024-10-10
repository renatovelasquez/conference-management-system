package dev.renvl.conferenceplatform.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Builder
@Getter
@Setter
@AllArgsConstructor
public class AvailableConferencesRequest {

    @NotNull(message = "Start time conference must not be null")
    @Schema(type = "string", pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime startConference;
    @NotNull(message = "End time conference must not be null")
    @Schema(type = "string", pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime endConference;
}