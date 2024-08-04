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

// AdminListAllDistinctPlatformAccountsV3Reader is a Reader for the AdminListAllDistinctPlatformAccountsV3 structure.
type AdminListAllDistinctPlatformAccountsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListAllDistinctPlatformAccountsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListAllDistinctPlatformAccountsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListAllDistinctPlatformAccountsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListAllDistinctPlatformAccountsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListAllDistinctPlatformAccountsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListAllDistinctPlatformAccountsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListAllDistinctPlatformAccountsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListAllDistinctPlatformAccountsV3OK creates a AdminListAllDistinctPlatformAccountsV3OK with default headers values
func NewAdminListAllDistinctPlatformAccountsV3OK() *AdminListAllDistinctPlatformAccountsV3OK {
	return &AdminListAllDistinctPlatformAccountsV3OK{}
}

/*AdminListAllDistinctPlatformAccountsV3OK handles this case with default header values.

  OK
*/
type AdminListAllDistinctPlatformAccountsV3OK struct {
	Payload *iamclientmodels.AccountcommonDistinctPlatformResponseV3
}

func (o *AdminListAllDistinctPlatformAccountsV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct][%d] adminListAllDistinctPlatformAccountsV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListAllDistinctPlatformAccountsV3OK) ToJSONString() string {
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

func (o *AdminListAllDistinctPlatformAccountsV3OK) GetPayload() *iamclientmodels.AccountcommonDistinctPlatformResponseV3 {
	return o.Payload
}

func (o *AdminListAllDistinctPlatformAccountsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonDistinctPlatformResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListAllDistinctPlatformAccountsV3BadRequest creates a AdminListAllDistinctPlatformAccountsV3BadRequest with default headers values
func NewAdminListAllDistinctPlatformAccountsV3BadRequest() *AdminListAllDistinctPlatformAccountsV3BadRequest {
	return &AdminListAllDistinctPlatformAccountsV3BadRequest{}
}

/*AdminListAllDistinctPlatformAccountsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListAllDistinctPlatformAccountsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAllDistinctPlatformAccountsV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct][%d] adminListAllDistinctPlatformAccountsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListAllDistinctPlatformAccountsV3BadRequest) ToJSONString() string {
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

func (o *AdminListAllDistinctPlatformAccountsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAllDistinctPlatformAccountsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAllDistinctPlatformAccountsV3Unauthorized creates a AdminListAllDistinctPlatformAccountsV3Unauthorized with default headers values
func NewAdminListAllDistinctPlatformAccountsV3Unauthorized() *AdminListAllDistinctPlatformAccountsV3Unauthorized {
	return &AdminListAllDistinctPlatformAccountsV3Unauthorized{}
}

/*AdminListAllDistinctPlatformAccountsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListAllDistinctPlatformAccountsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAllDistinctPlatformAccountsV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct][%d] adminListAllDistinctPlatformAccountsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListAllDistinctPlatformAccountsV3Unauthorized) ToJSONString() string {
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

func (o *AdminListAllDistinctPlatformAccountsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAllDistinctPlatformAccountsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAllDistinctPlatformAccountsV3Forbidden creates a AdminListAllDistinctPlatformAccountsV3Forbidden with default headers values
func NewAdminListAllDistinctPlatformAccountsV3Forbidden() *AdminListAllDistinctPlatformAccountsV3Forbidden {
	return &AdminListAllDistinctPlatformAccountsV3Forbidden{}
}

/*AdminListAllDistinctPlatformAccountsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListAllDistinctPlatformAccountsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAllDistinctPlatformAccountsV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct][%d] adminListAllDistinctPlatformAccountsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListAllDistinctPlatformAccountsV3Forbidden) ToJSONString() string {
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

func (o *AdminListAllDistinctPlatformAccountsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAllDistinctPlatformAccountsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAllDistinctPlatformAccountsV3NotFound creates a AdminListAllDistinctPlatformAccountsV3NotFound with default headers values
func NewAdminListAllDistinctPlatformAccountsV3NotFound() *AdminListAllDistinctPlatformAccountsV3NotFound {
	return &AdminListAllDistinctPlatformAccountsV3NotFound{}
}

/*AdminListAllDistinctPlatformAccountsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminListAllDistinctPlatformAccountsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAllDistinctPlatformAccountsV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct][%d] adminListAllDistinctPlatformAccountsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListAllDistinctPlatformAccountsV3NotFound) ToJSONString() string {
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

func (o *AdminListAllDistinctPlatformAccountsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAllDistinctPlatformAccountsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAllDistinctPlatformAccountsV3InternalServerError creates a AdminListAllDistinctPlatformAccountsV3InternalServerError with default headers values
func NewAdminListAllDistinctPlatformAccountsV3InternalServerError() *AdminListAllDistinctPlatformAccountsV3InternalServerError {
	return &AdminListAllDistinctPlatformAccountsV3InternalServerError{}
}

/*AdminListAllDistinctPlatformAccountsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminListAllDistinctPlatformAccountsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAllDistinctPlatformAccountsV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct][%d] adminListAllDistinctPlatformAccountsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListAllDistinctPlatformAccountsV3InternalServerError) ToJSONString() string {
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

func (o *AdminListAllDistinctPlatformAccountsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAllDistinctPlatformAccountsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
