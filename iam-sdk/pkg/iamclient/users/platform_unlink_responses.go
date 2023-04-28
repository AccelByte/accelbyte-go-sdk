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

// PlatformUnlinkReader is a Reader for the PlatformUnlink structure.
type PlatformUnlinkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformUnlinkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPlatformUnlinkNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformUnlinkBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformUnlinkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPlatformUnlinkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPlatformUnlinkNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPlatformUnlinkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformUnlinkNoContent creates a PlatformUnlinkNoContent with default headers values
func NewPlatformUnlinkNoContent() *PlatformUnlinkNoContent {
	return &PlatformUnlinkNoContent{}
}

/*PlatformUnlinkNoContent handles this case with default header values.

  Operation succeeded
*/
type PlatformUnlinkNoContent struct {
}

func (o *PlatformUnlinkNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink][%d] platformUnlinkNoContent ", 204)
}

func (o *PlatformUnlinkNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformUnlinkBadRequest creates a PlatformUnlinkBadRequest with default headers values
func NewPlatformUnlinkBadRequest() *PlatformUnlinkBadRequest {
	return &PlatformUnlinkBadRequest{}
}

/*PlatformUnlinkBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PlatformUnlinkBadRequest struct {
}

func (o *PlatformUnlinkBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink][%d] platformUnlinkBadRequest ", 400)
}

func (o *PlatformUnlinkBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformUnlinkUnauthorized creates a PlatformUnlinkUnauthorized with default headers values
func NewPlatformUnlinkUnauthorized() *PlatformUnlinkUnauthorized {
	return &PlatformUnlinkUnauthorized{}
}

/*PlatformUnlinkUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PlatformUnlinkUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PlatformUnlinkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink][%d] platformUnlinkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformUnlinkUnauthorized) ToJSONString() string {
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

func (o *PlatformUnlinkUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PlatformUnlinkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformUnlinkForbidden creates a PlatformUnlinkForbidden with default headers values
func NewPlatformUnlinkForbidden() *PlatformUnlinkForbidden {
	return &PlatformUnlinkForbidden{}
}

/*PlatformUnlinkForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PlatformUnlinkForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PlatformUnlinkForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink][%d] platformUnlinkForbidden  %+v", 403, o.ToJSONString())
}

func (o *PlatformUnlinkForbidden) ToJSONString() string {
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

func (o *PlatformUnlinkForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PlatformUnlinkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformUnlinkNotFound creates a PlatformUnlinkNotFound with default headers values
func NewPlatformUnlinkNotFound() *PlatformUnlinkNotFound {
	return &PlatformUnlinkNotFound{}
}

/*PlatformUnlinkNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PlatformUnlinkNotFound struct {
}

func (o *PlatformUnlinkNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink][%d] platformUnlinkNotFound ", 404)
}

func (o *PlatformUnlinkNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformUnlinkInternalServerError creates a PlatformUnlinkInternalServerError with default headers values
func NewPlatformUnlinkInternalServerError() *PlatformUnlinkInternalServerError {
	return &PlatformUnlinkInternalServerError{}
}

/*PlatformUnlinkInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PlatformUnlinkInternalServerError struct {
}

func (o *PlatformUnlinkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink][%d] platformUnlinkInternalServerError ", 500)
}

func (o *PlatformUnlinkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
