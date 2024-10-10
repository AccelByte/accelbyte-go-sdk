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

// AdminDeleteUserLinkingRestrictionByPlatformIDV3Reader is a Reader for the AdminDeleteUserLinkingRestrictionByPlatformIDV3 structure.
type AdminDeleteUserLinkingRestrictionByPlatformIDV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent creates a AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent with default headers values
func NewAdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent() *AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent {
	return &AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent{}
}

/*AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent struct {
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions][%d] adminDeleteUserLinkingRestrictionByPlatformIdV3NoContent ", 204)
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest creates a AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest with default headers values
func NewAdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest() *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest {
	return &AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest{}
}

/*AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions][%d] adminDeleteUserLinkingRestrictionByPlatformIdV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized creates a AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized with default headers values
func NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized() *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized {
	return &AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized{}
}

/*AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions][%d] adminDeleteUserLinkingRestrictionByPlatformIdV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden creates a AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden with default headers values
func NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden() *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden {
	return &AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden{}
}

/*AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions][%d] adminDeleteUserLinkingRestrictionByPlatformIdV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound creates a AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound with default headers values
func NewAdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound() *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound {
	return &AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound{}
}

/*AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions][%d] adminDeleteUserLinkingRestrictionByPlatformIdV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError creates a AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError with default headers values
func NewAdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError() *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError {
	return &AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError{}
}

/*AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions][%d] adminDeleteUserLinkingRestrictionByPlatformIdV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
