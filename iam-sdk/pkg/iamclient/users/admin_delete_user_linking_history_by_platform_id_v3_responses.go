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

// AdminDeleteUserLinkingHistoryByPlatformIDV3Reader is a Reader for the AdminDeleteUserLinkingHistoryByPlatformIDV3 structure.
type AdminDeleteUserLinkingHistoryByPlatformIDV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteUserLinkingHistoryByPlatformIDV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteUserLinkingHistoryByPlatformIDV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3NoContent creates a AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent with default headers values
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3NoContent() *AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent {
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent{}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent struct {
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories][%d] adminDeleteUserLinkingHistoryByPlatformIdV3NoContent ", 204)
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest creates a AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest with default headers values
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest() *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest {
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest{}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories][%d] adminDeleteUserLinkingHistoryByPlatformIdV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized creates a AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized with default headers values
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized() *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized {
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized{}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories][%d] adminDeleteUserLinkingHistoryByPlatformIdV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden creates a AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden with default headers values
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden() *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden {
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden{}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories][%d] adminDeleteUserLinkingHistoryByPlatformIdV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3NotFound creates a AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound with default headers values
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3NotFound() *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound {
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound{}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories][%d] adminDeleteUserLinkingHistoryByPlatformIdV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError creates a AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError with default headers values
func NewAdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError() *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError {
	return &AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError{}
}

/*AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories][%d] adminDeleteUserLinkingHistoryByPlatformIdV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
