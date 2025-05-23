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

// AdminDeletePlatformLinkV2Reader is a Reader for the AdminDeletePlatformLinkV2 structure.
type AdminDeletePlatformLinkV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlatformLinkV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlatformLinkV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeletePlatformLinkV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlatformLinkV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlatformLinkV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeletePlatformLinkV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlatformLinkV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlatformLinkV2NoContent creates a AdminDeletePlatformLinkV2NoContent with default headers values
func NewAdminDeletePlatformLinkV2NoContent() *AdminDeletePlatformLinkV2NoContent {
	return &AdminDeletePlatformLinkV2NoContent{}
}

/*AdminDeletePlatformLinkV2NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeletePlatformLinkV2NoContent struct {
}

func (o *AdminDeletePlatformLinkV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminDeletePlatformLinkV2NoContent ", 204)
}

func (o *AdminDeletePlatformLinkV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlatformLinkV2BadRequest creates a AdminDeletePlatformLinkV2BadRequest with default headers values
func NewAdminDeletePlatformLinkV2BadRequest() *AdminDeletePlatformLinkV2BadRequest {
	return &AdminDeletePlatformLinkV2BadRequest{}
}

/*AdminDeletePlatformLinkV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminDeletePlatformLinkV2BadRequest struct {
}

func (o *AdminDeletePlatformLinkV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminDeletePlatformLinkV2BadRequest ", 400)
}

func (o *AdminDeletePlatformLinkV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlatformLinkV2Unauthorized creates a AdminDeletePlatformLinkV2Unauthorized with default headers values
func NewAdminDeletePlatformLinkV2Unauthorized() *AdminDeletePlatformLinkV2Unauthorized {
	return &AdminDeletePlatformLinkV2Unauthorized{}
}

/*AdminDeletePlatformLinkV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeletePlatformLinkV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeletePlatformLinkV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminDeletePlatformLinkV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlatformLinkV2Unauthorized) ToJSONString() string {
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

func (o *AdminDeletePlatformLinkV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeletePlatformLinkV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeletePlatformLinkV2Forbidden creates a AdminDeletePlatformLinkV2Forbidden with default headers values
func NewAdminDeletePlatformLinkV2Forbidden() *AdminDeletePlatformLinkV2Forbidden {
	return &AdminDeletePlatformLinkV2Forbidden{}
}

/*AdminDeletePlatformLinkV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeletePlatformLinkV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeletePlatformLinkV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminDeletePlatformLinkV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlatformLinkV2Forbidden) ToJSONString() string {
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

func (o *AdminDeletePlatformLinkV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeletePlatformLinkV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeletePlatformLinkV2NotFound creates a AdminDeletePlatformLinkV2NotFound with default headers values
func NewAdminDeletePlatformLinkV2NotFound() *AdminDeletePlatformLinkV2NotFound {
	return &AdminDeletePlatformLinkV2NotFound{}
}

/*AdminDeletePlatformLinkV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDeletePlatformLinkV2NotFound struct {
}

func (o *AdminDeletePlatformLinkV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminDeletePlatformLinkV2NotFound ", 404)
}

func (o *AdminDeletePlatformLinkV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlatformLinkV2InternalServerError creates a AdminDeletePlatformLinkV2InternalServerError with default headers values
func NewAdminDeletePlatformLinkV2InternalServerError() *AdminDeletePlatformLinkV2InternalServerError {
	return &AdminDeletePlatformLinkV2InternalServerError{}
}

/*AdminDeletePlatformLinkV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDeletePlatformLinkV2InternalServerError struct {
}

func (o *AdminDeletePlatformLinkV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminDeletePlatformLinkV2InternalServerError ", 500)
}

func (o *AdminDeletePlatformLinkV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
