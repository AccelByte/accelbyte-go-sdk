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

// GeneratedUserUploadContentURLReader is a Reader for the GeneratedUserUploadContentURL structure.
type GeneratedUserUploadContentURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GeneratedUserUploadContentURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGeneratedUserUploadContentURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGeneratedUserUploadContentURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGeneratedUserUploadContentURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGeneratedUserUploadContentURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewGeneratedUserUploadContentURLConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGeneratedUserUploadContentURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGeneratedUserUploadContentURLOK creates a GeneratedUserUploadContentURLOK with default headers values
func NewGeneratedUserUploadContentURLOK() *GeneratedUserUploadContentURLOK {
	return &GeneratedUserUploadContentURLOK{}
}

/*GeneratedUserUploadContentURLOK handles this case with default header values.

  Successful operation
*/
type GeneratedUserUploadContentURLOK struct {
	Payload *basicclientmodels.FileUploadURLInfo
}

func (o *GeneratedUserUploadContentURLOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files][%d] generatedUserUploadContentUrlOK  %+v", 200, o.ToJSONString())
}

func (o *GeneratedUserUploadContentURLOK) ToJSONString() string {
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

func (o *GeneratedUserUploadContentURLOK) GetPayload() *basicclientmodels.FileUploadURLInfo {
	return o.Payload
}

func (o *GeneratedUserUploadContentURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGeneratedUserUploadContentURLBadRequest creates a GeneratedUserUploadContentURLBadRequest with default headers values
func NewGeneratedUserUploadContentURLBadRequest() *GeneratedUserUploadContentURLBadRequest {
	return &GeneratedUserUploadContentURLBadRequest{}
}

/*GeneratedUserUploadContentURLBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>11121</td><td>Unable to {action}: category {category} is not valid</td></tr><tr><td>11131</td><td>Unable to {action}: File type is not supported</td></tr></table>
*/
type GeneratedUserUploadContentURLBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GeneratedUserUploadContentURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files][%d] generatedUserUploadContentUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GeneratedUserUploadContentURLBadRequest) ToJSONString() string {
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

func (o *GeneratedUserUploadContentURLBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GeneratedUserUploadContentURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGeneratedUserUploadContentURLUnauthorized creates a GeneratedUserUploadContentURLUnauthorized with default headers values
func NewGeneratedUserUploadContentURLUnauthorized() *GeneratedUserUploadContentURLUnauthorized {
	return &GeneratedUserUploadContentURLUnauthorized{}
}

/*GeneratedUserUploadContentURLUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GeneratedUserUploadContentURLUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUserUploadContentURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files][%d] generatedUserUploadContentUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GeneratedUserUploadContentURLUnauthorized) ToJSONString() string {
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

func (o *GeneratedUserUploadContentURLUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUserUploadContentURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGeneratedUserUploadContentURLForbidden creates a GeneratedUserUploadContentURLForbidden with default headers values
func NewGeneratedUserUploadContentURLForbidden() *GeneratedUserUploadContentURLForbidden {
	return &GeneratedUserUploadContentURLForbidden{}
}

/*GeneratedUserUploadContentURLForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GeneratedUserUploadContentURLForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUserUploadContentURLForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files][%d] generatedUserUploadContentUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *GeneratedUserUploadContentURLForbidden) ToJSONString() string {
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

func (o *GeneratedUserUploadContentURLForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUserUploadContentURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGeneratedUserUploadContentURLConflict creates a GeneratedUserUploadContentURLConflict with default headers values
func NewGeneratedUserUploadContentURLConflict() *GeneratedUserUploadContentURLConflict {
	return &GeneratedUserUploadContentURLConflict{}
}

/*GeneratedUserUploadContentURLConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11132</td><td>Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace}</td></tr></table>
*/
type GeneratedUserUploadContentURLConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUserUploadContentURLConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files][%d] generatedUserUploadContentUrlConflict  %+v", 409, o.ToJSONString())
}

func (o *GeneratedUserUploadContentURLConflict) ToJSONString() string {
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

func (o *GeneratedUserUploadContentURLConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUserUploadContentURLConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGeneratedUserUploadContentURLInternalServerError creates a GeneratedUserUploadContentURLInternalServerError with default headers values
func NewGeneratedUserUploadContentURLInternalServerError() *GeneratedUserUploadContentURLInternalServerError {
	return &GeneratedUserUploadContentURLInternalServerError{}
}

/*GeneratedUserUploadContentURLInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GeneratedUserUploadContentURLInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GeneratedUserUploadContentURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/users/{userId}/files][%d] generatedUserUploadContentUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GeneratedUserUploadContentURLInternalServerError) ToJSONString() string {
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

func (o *GeneratedUserUploadContentURLInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeneratedUserUploadContentURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
