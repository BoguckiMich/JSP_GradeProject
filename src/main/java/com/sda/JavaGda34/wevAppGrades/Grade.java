package com.sda.JavaGda34.wevAppGrades;

import lombok.*;

import java.time.LocalDateTime;

@Data
@Getter
@Setter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(of = {"id"})
public class Grade {
    private Long id;
    private LocalDateTime dateAdded;
    private GradeSubject przedmiot;
    private Double value;
    private boolean corrected;
}
