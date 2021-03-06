package ru.bellintegrator.simpleservice.document.view;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;

import javax.validation.constraints.Size;
import java.util.Date;

@ApiModel(description = "Отображение документа")
public class DocumentView {

    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    public String id;

    @Size(max = 63)
    public String number;

    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    public Date date;

    public TypeDocumentView typeDocument;
}
