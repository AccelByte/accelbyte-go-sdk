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

// AdminPlatformUnlinkV3Reader is a Reader for the AdminPlatformUnlinkV3 structure.
type AdminPlatformUnlinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPlatformUnlinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPlatformUnlinkV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPlatformUnlinkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPlatformUnlinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPlatformUnlinkV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPlatformUnlinkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPlatformUnlinkV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPlatformUnlinkV3NoContent creates a AdminPlatformUnlinkV3NoContent with default headers values
func NewAdminPlatformUnlinkV3NoContent() *AdminPlatformUnlinkV3NoContent {
	return &AdminPlatformUnlinkV3NoContent{}
}

/*AdminPlatformUnlinkV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminPlatformUnlinkV3NoContent struct {
}

func (o *AdminPlatformUnlinkV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}][%d] adminPlatformUnlinkV3NoContent ", 204)
}

func (o *AdminPlatformUnlinkV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPlatformUnlinkV3BadRequest creates a AdminPlatformUnlinkV3BadRequest with default headers values
func NewAdminPlatformUnlinkV3BadRequest() *AdminPlatformUnlinkV3BadRequest {
	return &AdminPlatformUnlinkV3BadRequest{}
}

/*AdminPlatformUnlinkV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminPlatformUnlinkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}][%d] adminPlatformUnlinkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPlatformUnlinkV3BadRequest) ToJSONString() string {
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

func (o *AdminPlatformUnlinkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkV3Unauthorized creates a AdminPlatformUnlinkV3Unauthorized with default headers values
func NewAdminPlatformUnlinkV3Unauthorized() *AdminPlatformUnlinkV3Unauthorized {
	return &AdminPlatformUnlinkV3Unauthorized{}
}

/*AdminPlatformUnlinkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPlatformUnlinkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}][%d] adminPlatformUnlinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPlatformUnlinkV3Unauthorized) ToJSONString() string {
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

func (o *AdminPlatformUnlinkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkV3Forbidden creates a AdminPlatformUnlinkV3Forbidden with default headers values
func NewAdminPlatformUnlinkV3Forbidden() *AdminPlatformUnlinkV3Forbidden {
	return &AdminPlatformUnlinkV3Forbidden{}
}

/*AdminPlatformUnlinkV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminPlatformUnlinkV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}][%d] adminPlatformUnlinkV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPlatformUnlinkV3Forbidden) ToJSONString() string {
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

func (o *AdminPlatformUnlinkV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkV3NotFound creates a AdminPlatformUnlinkV3NotFound with default headers values
func NewAdminPlatformUnlinkV3NotFound() *AdminPlatformUnlinkV3NotFound {
	return &AdminPlatformUnlinkV3NotFound{}
}

/*AdminPlatformUnlinkV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminPlatformUnlinkV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}][%d] adminPlatformUnlinkV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPlatformUnlinkV3NotFound) ToJSONString() string {
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

func (o *AdminPlatformUnlinkV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkV3InternalServerError creates a AdminPlatformUnlinkV3InternalServerError with default headers values
func NewAdminPlatformUnlinkV3InternalServerError() *AdminPlatformUnlinkV3InternalServerError {
	return &AdminPlatformUnlinkV3InternalServerError{}
}

/*AdminPlatformUnlinkV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminPlatformUnlinkV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}][%d] adminPlatformUnlinkV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPlatformUnlinkV3InternalServerError) ToJSONString() string {
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

func (o *AdminPlatformUnlinkV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
