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

// PublicGeneratedUploadURLReader is a Reader for the PublicGeneratedUploadURL structure.
type PublicGeneratedUploadURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGeneratedUploadURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGeneratedUploadURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGeneratedUploadURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGeneratedUploadURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGeneratedUploadURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGeneratedUploadURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/folders/{folder}/files returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGeneratedUploadURLOK creates a PublicGeneratedUploadURLOK with default headers values
func NewPublicGeneratedUploadURLOK() *PublicGeneratedUploadURLOK {
	return &PublicGeneratedUploadURLOK{}
}

/*PublicGeneratedUploadURLOK handles this case with default header values.

  Successful operation
*/
type PublicGeneratedUploadURLOK struct {
	Payload *basicclientmodels.FileUploadURLInfo
}

func (o *PublicGeneratedUploadURLOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/folders/{folder}/files][%d] publicGeneratedUploadUrlOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGeneratedUploadURLOK) ToJSONString() string {
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

func (o *PublicGeneratedUploadURLOK) GetPayload() *basicclientmodels.FileUploadURLInfo {
	return o.Payload
}

func (o *PublicGeneratedUploadURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUploadURLBadRequest creates a PublicGeneratedUploadURLBadRequest with default headers values
func NewPublicGeneratedUploadURLBadRequest() *PublicGeneratedUploadURLBadRequest {
	return &PublicGeneratedUploadURLBadRequest{}
}

/*PublicGeneratedUploadURLBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>11131</td><td>Unable to {action}: File type is not supported</td></tr></table>
*/
type PublicGeneratedUploadURLBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicGeneratedUploadURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/folders/{folder}/files][%d] publicGeneratedUploadUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGeneratedUploadURLBadRequest) ToJSONString() string {
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

func (o *PublicGeneratedUploadURLBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUploadURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUploadURLUnauthorized creates a PublicGeneratedUploadURLUnauthorized with default headers values
func NewPublicGeneratedUploadURLUnauthorized() *PublicGeneratedUploadURLUnauthorized {
	return &PublicGeneratedUploadURLUnauthorized{}
}

/*PublicGeneratedUploadURLUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicGeneratedUploadURLUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUploadURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/folders/{folder}/files][%d] publicGeneratedUploadUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGeneratedUploadURLUnauthorized) ToJSONString() string {
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

func (o *PublicGeneratedUploadURLUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUploadURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUploadURLForbidden creates a PublicGeneratedUploadURLForbidden with default headers values
func NewPublicGeneratedUploadURLForbidden() *PublicGeneratedUploadURLForbidden {
	return &PublicGeneratedUploadURLForbidden{}
}

/*PublicGeneratedUploadURLForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGeneratedUploadURLForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUploadURLForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/folders/{folder}/files][%d] publicGeneratedUploadUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGeneratedUploadURLForbidden) ToJSONString() string {
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

func (o *PublicGeneratedUploadURLForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUploadURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGeneratedUploadURLInternalServerError creates a PublicGeneratedUploadURLInternalServerError with default headers values
func NewPublicGeneratedUploadURLInternalServerError() *PublicGeneratedUploadURLInternalServerError {
	return &PublicGeneratedUploadURLInternalServerError{}
}

/*PublicGeneratedUploadURLInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGeneratedUploadURLInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGeneratedUploadURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/folders/{folder}/files][%d] publicGeneratedUploadUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGeneratedUploadURLInternalServerError) ToJSONString() string {
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

func (o *PublicGeneratedUploadURLInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGeneratedUploadURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
