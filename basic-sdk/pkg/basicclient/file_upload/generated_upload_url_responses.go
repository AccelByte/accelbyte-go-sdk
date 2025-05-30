// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package file_upload

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// GeneratedUploadURLReader is a Reader for the GeneratedUploadURL structure.
type GeneratedUploadURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GeneratedUploadURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGeneratedUploadURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGeneratedUploadURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGeneratedUploadURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGeneratedUploadURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGeneratedUploadURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGeneratedUploadURLOK creates a GeneratedUploadURLOK with default headers values
func NewGeneratedUploadURLOK() *GeneratedUploadURLOK {
	return &GeneratedUploadURLOK{}
}

/*GeneratedUploadURLOK handles this case with default header values.

  Successful operation
*/
type GeneratedUploadURLOK struct {
	Payload *basicclientmodels.FileUploadURLInfo
}

func (o *GeneratedUploadURLOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files][%d] generatedUploadUrlOK  %+v", 200, o.ToJSONString())
}

func (o *GeneratedUploadURLOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GeneratedUploadURLOK) GetPayload() *basicclientmodels.FileUploadURLInfo {
	return o.Payload
}

func (o *GeneratedUploadURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.FileUploadURLInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGeneratedUploadURLBadRequest creates a GeneratedUploadURLBadRequest with default headers values
func NewGeneratedUploadURLBadRequest() *GeneratedUploadURLBadRequest {
	return &GeneratedUploadURLBadRequest{}
}

/*GeneratedUploadURLBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>11131</td><td>Unable to {action}: File type is not supported</td></tr></table>
*/
type GeneratedUploadURLBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GeneratedUploadURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files][%d] generatedUploadUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GeneratedUploadURLBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GeneratedUploadURLBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GeneratedUploadURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGeneratedUploadURLUnauthorized creates a GeneratedUploadURLUnauthorized with default headers values
func NewGeneratedUploadURLUnauthorized() *GeneratedUploadURLUnauthorized {
	return &GeneratedUploadURLUnauthorized{}
}

/*GeneratedUploadURLUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GeneratedUploadURLUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUploadURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files][%d] generatedUploadUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GeneratedUploadURLUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GeneratedUploadURLUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUploadURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGeneratedUploadURLForbidden creates a GeneratedUploadURLForbidden with default headers values
func NewGeneratedUploadURLForbidden() *GeneratedUploadURLForbidden {
	return &GeneratedUploadURLForbidden{}
}

/*GeneratedUploadURLForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GeneratedUploadURLForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUploadURLForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files][%d] generatedUploadUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *GeneratedUploadURLForbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GeneratedUploadURLForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUploadURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGeneratedUploadURLInternalServerError creates a GeneratedUploadURLInternalServerError with default headers values
func NewGeneratedUploadURLInternalServerError() *GeneratedUploadURLInternalServerError {
	return &GeneratedUploadURLInternalServerError{}
}

/*GeneratedUploadURLInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GeneratedUploadURLInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUploadURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files][%d] generatedUploadUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GeneratedUploadURLInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GeneratedUploadURLInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUploadURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
