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

// AdminGetUserPlatformAccountsV3Reader is a Reader for the AdminGetUserPlatformAccountsV3 structure.
type AdminGetUserPlatformAccountsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserPlatformAccountsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserPlatformAccountsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserPlatformAccountsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserPlatformAccountsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserPlatformAccountsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserPlatformAccountsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserPlatformAccountsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserPlatformAccountsV3OK creates a AdminGetUserPlatformAccountsV3OK with default headers values
func NewAdminGetUserPlatformAccountsV3OK() *AdminGetUserPlatformAccountsV3OK {
	return &AdminGetUserPlatformAccountsV3OK{}
}

/*AdminGetUserPlatformAccountsV3OK handles this case with default header values.

  OK
*/
type AdminGetUserPlatformAccountsV3OK struct {
	Payload *iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3
}

func (o *AdminGetUserPlatformAccountsV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms][%d] adminGetUserPlatformAccountsV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountsV3OK) ToJSONString() string {
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

func (o *AdminGetUserPlatformAccountsV3OK) GetPayload() *iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3 {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonUserLinkedPlatformsResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPlatformAccountsV3BadRequest creates a AdminGetUserPlatformAccountsV3BadRequest with default headers values
func NewAdminGetUserPlatformAccountsV3BadRequest() *AdminGetUserPlatformAccountsV3BadRequest {
	return &AdminGetUserPlatformAccountsV3BadRequest{}
}

/*AdminGetUserPlatformAccountsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetUserPlatformAccountsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserPlatformAccountsV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms][%d] adminGetUserPlatformAccountsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountsV3BadRequest) ToJSONString() string {
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

func (o *AdminGetUserPlatformAccountsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPlatformAccountsV3Unauthorized creates a AdminGetUserPlatformAccountsV3Unauthorized with default headers values
func NewAdminGetUserPlatformAccountsV3Unauthorized() *AdminGetUserPlatformAccountsV3Unauthorized {
	return &AdminGetUserPlatformAccountsV3Unauthorized{}
}

/*AdminGetUserPlatformAccountsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserPlatformAccountsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserPlatformAccountsV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms][%d] adminGetUserPlatformAccountsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountsV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserPlatformAccountsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPlatformAccountsV3Forbidden creates a AdminGetUserPlatformAccountsV3Forbidden with default headers values
func NewAdminGetUserPlatformAccountsV3Forbidden() *AdminGetUserPlatformAccountsV3Forbidden {
	return &AdminGetUserPlatformAccountsV3Forbidden{}
}

/*AdminGetUserPlatformAccountsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserPlatformAccountsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserPlatformAccountsV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms][%d] adminGetUserPlatformAccountsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountsV3Forbidden) ToJSONString() string {
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

func (o *AdminGetUserPlatformAccountsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPlatformAccountsV3NotFound creates a AdminGetUserPlatformAccountsV3NotFound with default headers values
func NewAdminGetUserPlatformAccountsV3NotFound() *AdminGetUserPlatformAccountsV3NotFound {
	return &AdminGetUserPlatformAccountsV3NotFound{}
}

/*AdminGetUserPlatformAccountsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetUserPlatformAccountsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserPlatformAccountsV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms][%d] adminGetUserPlatformAccountsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountsV3NotFound) ToJSONString() string {
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

func (o *AdminGetUserPlatformAccountsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPlatformAccountsV3InternalServerError creates a AdminGetUserPlatformAccountsV3InternalServerError with default headers values
func NewAdminGetUserPlatformAccountsV3InternalServerError() *AdminGetUserPlatformAccountsV3InternalServerError {
	return &AdminGetUserPlatformAccountsV3InternalServerError{}
}

/*AdminGetUserPlatformAccountsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserPlatformAccountsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserPlatformAccountsV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms][%d] adminGetUserPlatformAccountsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountsV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserPlatformAccountsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
