// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// PlatformLinkReader is a Reader for the PlatformLink structure.
type PlatformLinkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformLinkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPlatformLinkNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformLinkBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformLinkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPlatformLinkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPlatformLinkNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPlatformLinkConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPlatformLinkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformLinkNoContent creates a PlatformLinkNoContent with default headers values
func NewPlatformLinkNoContent() *PlatformLinkNoContent {
	return &PlatformLinkNoContent{}
}

/*PlatformLinkNoContent handles this case with default header values.

  Operation succeeded
*/
type PlatformLinkNoContent struct {
}

func (o *PlatformLinkNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkNoContent ", 204)
}

func (o *PlatformLinkNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformLinkBadRequest creates a PlatformLinkBadRequest with default headers values
func NewPlatformLinkBadRequest() *PlatformLinkBadRequest {
	return &PlatformLinkBadRequest{}
}

/*PlatformLinkBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PlatformLinkBadRequest struct {
}

func (o *PlatformLinkBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkBadRequest ", 400)
}

func (o *PlatformLinkBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformLinkUnauthorized creates a PlatformLinkUnauthorized with default headers values
func NewPlatformLinkUnauthorized() *PlatformLinkUnauthorized {
	return &PlatformLinkUnauthorized{}
}

/*PlatformLinkUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PlatformLinkUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PlatformLinkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformLinkUnauthorized) ToJSONString() string {
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

func (o *PlatformLinkUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PlatformLinkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformLinkForbidden creates a PlatformLinkForbidden with default headers values
func NewPlatformLinkForbidden() *PlatformLinkForbidden {
	return &PlatformLinkForbidden{}
}

/*PlatformLinkForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PlatformLinkForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PlatformLinkForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkForbidden  %+v", 403, o.ToJSONString())
}

func (o *PlatformLinkForbidden) ToJSONString() string {
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

func (o *PlatformLinkForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PlatformLinkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformLinkNotFound creates a PlatformLinkNotFound with default headers values
func NewPlatformLinkNotFound() *PlatformLinkNotFound {
	return &PlatformLinkNotFound{}
}

/*PlatformLinkNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PlatformLinkNotFound struct {
}

func (o *PlatformLinkNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkNotFound ", 404)
}

func (o *PlatformLinkNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformLinkConflict creates a PlatformLinkConflict with default headers values
func NewPlatformLinkConflict() *PlatformLinkConflict {
	return &PlatformLinkConflict{}
}

/*PlatformLinkConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10163</td><td>platform is already linked with the user account</td></tr></table>
*/
type PlatformLinkConflict struct {
}

func (o *PlatformLinkConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkConflict ", 409)
}

func (o *PlatformLinkConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformLinkInternalServerError creates a PlatformLinkInternalServerError with default headers values
func NewPlatformLinkInternalServerError() *PlatformLinkInternalServerError {
	return &PlatformLinkInternalServerError{}
}

/*PlatformLinkInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PlatformLinkInternalServerError struct {
}

func (o *PlatformLinkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] platformLinkInternalServerError ", 500)
}

func (o *PlatformLinkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
