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

// AdminPlatformLinkV3Reader is a Reader for the AdminPlatformLinkV3 structure.
type AdminPlatformLinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPlatformLinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPlatformLinkV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPlatformLinkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPlatformLinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPlatformLinkV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPlatformLinkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminPlatformLinkV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPlatformLinkV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPlatformLinkV3NoContent creates a AdminPlatformLinkV3NoContent with default headers values
func NewAdminPlatformLinkV3NoContent() *AdminPlatformLinkV3NoContent {
	return &AdminPlatformLinkV3NoContent{}
}

/*AdminPlatformLinkV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminPlatformLinkV3NoContent struct {
}

func (o *AdminPlatformLinkV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3NoContent ", 204)
}

func (o *AdminPlatformLinkV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPlatformLinkV3BadRequest creates a AdminPlatformLinkV3BadRequest with default headers values
func NewAdminPlatformLinkV3BadRequest() *AdminPlatformLinkV3BadRequest {
	return &AdminPlatformLinkV3BadRequest{}
}

/*AdminPlatformLinkV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminPlatformLinkV3BadRequest struct {
}

func (o *AdminPlatformLinkV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3BadRequest ", 400)
}

func (o *AdminPlatformLinkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPlatformLinkV3Unauthorized creates a AdminPlatformLinkV3Unauthorized with default headers values
func NewAdminPlatformLinkV3Unauthorized() *AdminPlatformLinkV3Unauthorized {
	return &AdminPlatformLinkV3Unauthorized{}
}

/*AdminPlatformLinkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPlatformLinkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformLinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPlatformLinkV3Unauthorized) ToJSONString() string {
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

func (o *AdminPlatformLinkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformLinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformLinkV3Forbidden creates a AdminPlatformLinkV3Forbidden with default headers values
func NewAdminPlatformLinkV3Forbidden() *AdminPlatformLinkV3Forbidden {
	return &AdminPlatformLinkV3Forbidden{}
}

/*AdminPlatformLinkV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminPlatformLinkV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformLinkV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPlatformLinkV3Forbidden) ToJSONString() string {
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

func (o *AdminPlatformLinkV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformLinkV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformLinkV3NotFound creates a AdminPlatformLinkV3NotFound with default headers values
func NewAdminPlatformLinkV3NotFound() *AdminPlatformLinkV3NotFound {
	return &AdminPlatformLinkV3NotFound{}
}

/*AdminPlatformLinkV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminPlatformLinkV3NotFound struct {
}

func (o *AdminPlatformLinkV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3NotFound ", 404)
}

func (o *AdminPlatformLinkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPlatformLinkV3Conflict creates a AdminPlatformLinkV3Conflict with default headers values
func NewAdminPlatformLinkV3Conflict() *AdminPlatformLinkV3Conflict {
	return &AdminPlatformLinkV3Conflict{}
}

/*AdminPlatformLinkV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10163</td><td>platform is already linked with the user account</td></tr></table>
*/
type AdminPlatformLinkV3Conflict struct {
}

func (o *AdminPlatformLinkV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3Conflict ", 409)
}

func (o *AdminPlatformLinkV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPlatformLinkV3InternalServerError creates a AdminPlatformLinkV3InternalServerError with default headers values
func NewAdminPlatformLinkV3InternalServerError() *AdminPlatformLinkV3InternalServerError {
	return &AdminPlatformLinkV3InternalServerError{}
}

/*AdminPlatformLinkV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminPlatformLinkV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformLinkV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link][%d] adminPlatformLinkV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPlatformLinkV3InternalServerError) ToJSONString() string {
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

func (o *AdminPlatformLinkV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformLinkV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
