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

// AdminListUserAllPlatformAccountsDistinctV3Reader is a Reader for the AdminListUserAllPlatformAccountsDistinctV3 structure.
type AdminListUserAllPlatformAccountsDistinctV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUserAllPlatformAccountsDistinctV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUserAllPlatformAccountsDistinctV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUserAllPlatformAccountsDistinctV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUserAllPlatformAccountsDistinctV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListUserAllPlatformAccountsDistinctV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListUserAllPlatformAccountsDistinctV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUserAllPlatformAccountsDistinctV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUserAllPlatformAccountsDistinctV3OK creates a AdminListUserAllPlatformAccountsDistinctV3OK with default headers values
func NewAdminListUserAllPlatformAccountsDistinctV3OK() *AdminListUserAllPlatformAccountsDistinctV3OK {
	return &AdminListUserAllPlatformAccountsDistinctV3OK{}
}

/*AdminListUserAllPlatformAccountsDistinctV3OK handles this case with default header values.

  OK
*/
type AdminListUserAllPlatformAccountsDistinctV3OK struct {
	Payload *iamclientmodels.AccountcommonDistinctPlatformResponseV3
}

func (o *AdminListUserAllPlatformAccountsDistinctV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] adminListUserAllPlatformAccountsDistinctV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUserAllPlatformAccountsDistinctV3OK) ToJSONString() string {
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

func (o *AdminListUserAllPlatformAccountsDistinctV3OK) GetPayload() *iamclientmodels.AccountcommonDistinctPlatformResponseV3 {
	return o.Payload
}

func (o *AdminListUserAllPlatformAccountsDistinctV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAllPlatformAccountsDistinctV3BadRequest creates a AdminListUserAllPlatformAccountsDistinctV3BadRequest with default headers values
func NewAdminListUserAllPlatformAccountsDistinctV3BadRequest() *AdminListUserAllPlatformAccountsDistinctV3BadRequest {
	return &AdminListUserAllPlatformAccountsDistinctV3BadRequest{}
}

/*AdminListUserAllPlatformAccountsDistinctV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListUserAllPlatformAccountsDistinctV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserAllPlatformAccountsDistinctV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] adminListUserAllPlatformAccountsDistinctV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUserAllPlatformAccountsDistinctV3BadRequest) ToJSONString() string {
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

func (o *AdminListUserAllPlatformAccountsDistinctV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserAllPlatformAccountsDistinctV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAllPlatformAccountsDistinctV3Unauthorized creates a AdminListUserAllPlatformAccountsDistinctV3Unauthorized with default headers values
func NewAdminListUserAllPlatformAccountsDistinctV3Unauthorized() *AdminListUserAllPlatformAccountsDistinctV3Unauthorized {
	return &AdminListUserAllPlatformAccountsDistinctV3Unauthorized{}
}

/*AdminListUserAllPlatformAccountsDistinctV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListUserAllPlatformAccountsDistinctV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserAllPlatformAccountsDistinctV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] adminListUserAllPlatformAccountsDistinctV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUserAllPlatformAccountsDistinctV3Unauthorized) ToJSONString() string {
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

func (o *AdminListUserAllPlatformAccountsDistinctV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserAllPlatformAccountsDistinctV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAllPlatformAccountsDistinctV3Forbidden creates a AdminListUserAllPlatformAccountsDistinctV3Forbidden with default headers values
func NewAdminListUserAllPlatformAccountsDistinctV3Forbidden() *AdminListUserAllPlatformAccountsDistinctV3Forbidden {
	return &AdminListUserAllPlatformAccountsDistinctV3Forbidden{}
}

/*AdminListUserAllPlatformAccountsDistinctV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListUserAllPlatformAccountsDistinctV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserAllPlatformAccountsDistinctV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] adminListUserAllPlatformAccountsDistinctV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListUserAllPlatformAccountsDistinctV3Forbidden) ToJSONString() string {
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

func (o *AdminListUserAllPlatformAccountsDistinctV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserAllPlatformAccountsDistinctV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAllPlatformAccountsDistinctV3NotFound creates a AdminListUserAllPlatformAccountsDistinctV3NotFound with default headers values
func NewAdminListUserAllPlatformAccountsDistinctV3NotFound() *AdminListUserAllPlatformAccountsDistinctV3NotFound {
	return &AdminListUserAllPlatformAccountsDistinctV3NotFound{}
}

/*AdminListUserAllPlatformAccountsDistinctV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminListUserAllPlatformAccountsDistinctV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserAllPlatformAccountsDistinctV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] adminListUserAllPlatformAccountsDistinctV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListUserAllPlatformAccountsDistinctV3NotFound) ToJSONString() string {
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

func (o *AdminListUserAllPlatformAccountsDistinctV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserAllPlatformAccountsDistinctV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAllPlatformAccountsDistinctV3InternalServerError creates a AdminListUserAllPlatformAccountsDistinctV3InternalServerError with default headers values
func NewAdminListUserAllPlatformAccountsDistinctV3InternalServerError() *AdminListUserAllPlatformAccountsDistinctV3InternalServerError {
	return &AdminListUserAllPlatformAccountsDistinctV3InternalServerError{}
}

/*AdminListUserAllPlatformAccountsDistinctV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminListUserAllPlatformAccountsDistinctV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserAllPlatformAccountsDistinctV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] adminListUserAllPlatformAccountsDistinctV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUserAllPlatformAccountsDistinctV3InternalServerError) ToJSONString() string {
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

func (o *AdminListUserAllPlatformAccountsDistinctV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserAllPlatformAccountsDistinctV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
