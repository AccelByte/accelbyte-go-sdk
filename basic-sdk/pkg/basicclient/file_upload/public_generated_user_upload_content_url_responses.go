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

// PublicGeneratedUserUploadContentURLReader is a Reader for the PublicGeneratedUserUploadContentURL structure.
type PublicGeneratedUserUploadContentURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGeneratedUserUploadContentURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGeneratedUserUploadContentURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGeneratedUserUploadContentURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGeneratedUserUploadContentURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGeneratedUserUploadContentURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicGeneratedUserUploadContentURLConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGeneratedUserUploadContentURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGeneratedUserUploadContentURLOK creates a PublicGeneratedUserUploadContentURLOK with default headers values
func NewPublicGeneratedUserUploadContentURLOK() *PublicGeneratedUserUploadContentURLOK {
	return &PublicGeneratedUserUploadContentURLOK{}
}

/*PublicGeneratedUserUploadContentURLOK handles this case with default header values.

  Successful operation
*/
type PublicGeneratedUserUploadContentURLOK struct {
	Payload *basicclientmodels.FileUploadURLInfo
}

func (o *PublicGeneratedUserUploadContentURLOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files][%d] publicGeneratedUserUploadContentUrlOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGeneratedUserUploadContentURLOK) ToJSONString() string {
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

func (o *PublicGeneratedUserUploadContentURLOK) GetPayload() *basicclientmodels.FileUploadURLInfo {
	return o.Payload
}

func (o *PublicGeneratedUserUploadContentURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUserUploadContentURLBadRequest creates a PublicGeneratedUserUploadContentURLBadRequest with default headers values
func NewPublicGeneratedUserUploadContentURLBadRequest() *PublicGeneratedUserUploadContentURLBadRequest {
	return &PublicGeneratedUserUploadContentURLBadRequest{}
}

/*PublicGeneratedUserUploadContentURLBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>11121</td><td>Unable to {action}: category {category} is not valid</td></tr><tr><td>11131</td><td>Unable to {action}: File type is not supported</td></tr></table>
*/
type PublicGeneratedUserUploadContentURLBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicGeneratedUserUploadContentURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files][%d] publicGeneratedUserUploadContentUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGeneratedUserUploadContentURLBadRequest) ToJSONString() string {
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

func (o *PublicGeneratedUserUploadContentURLBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUserUploadContentURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUserUploadContentURLUnauthorized creates a PublicGeneratedUserUploadContentURLUnauthorized with default headers values
func NewPublicGeneratedUserUploadContentURLUnauthorized() *PublicGeneratedUserUploadContentURLUnauthorized {
	return &PublicGeneratedUserUploadContentURLUnauthorized{}
}

/*PublicGeneratedUserUploadContentURLUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicGeneratedUserUploadContentURLUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUserUploadContentURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files][%d] publicGeneratedUserUploadContentUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGeneratedUserUploadContentURLUnauthorized) ToJSONString() string {
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

func (o *PublicGeneratedUserUploadContentURLUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUserUploadContentURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUserUploadContentURLForbidden creates a PublicGeneratedUserUploadContentURLForbidden with default headers values
func NewPublicGeneratedUserUploadContentURLForbidden() *PublicGeneratedUserUploadContentURLForbidden {
	return &PublicGeneratedUserUploadContentURLForbidden{}
}

/*PublicGeneratedUserUploadContentURLForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGeneratedUserUploadContentURLForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUserUploadContentURLForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files][%d] publicGeneratedUserUploadContentUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGeneratedUserUploadContentURLForbidden) ToJSONString() string {
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

func (o *PublicGeneratedUserUploadContentURLForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUserUploadContentURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUserUploadContentURLConflict creates a PublicGeneratedUserUploadContentURLConflict with default headers values
func NewPublicGeneratedUserUploadContentURLConflict() *PublicGeneratedUserUploadContentURLConflict {
	return &PublicGeneratedUserUploadContentURLConflict{}
}

/*PublicGeneratedUserUploadContentURLConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11132</td><td>Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace}</td></tr></table>
*/
type PublicGeneratedUserUploadContentURLConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUserUploadContentURLConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files][%d] publicGeneratedUserUploadContentUrlConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicGeneratedUserUploadContentURLConflict) ToJSONString() string {
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

func (o *PublicGeneratedUserUploadContentURLConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUserUploadContentURLConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUserUploadContentURLInternalServerError creates a PublicGeneratedUserUploadContentURLInternalServerError with default headers values
func NewPublicGeneratedUserUploadContentURLInternalServerError() *PublicGeneratedUserUploadContentURLInternalServerError {
	return &PublicGeneratedUserUploadContentURLInternalServerError{}
}

/*PublicGeneratedUserUploadContentURLInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGeneratedUserUploadContentURLInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUserUploadContentURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/files][%d] publicGeneratedUserUploadContentUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGeneratedUserUploadContentURLInternalServerError) ToJSONString() string {
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

func (o *PublicGeneratedUserUploadContentURLInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUserUploadContentURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
