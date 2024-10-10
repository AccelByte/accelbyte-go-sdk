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

// AdminGetUserByUserIDV3Reader is a Reader for the AdminGetUserByUserIDV3 structure.
type AdminGetUserByUserIDV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserByUserIDV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserByUserIDV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserByUserIDV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserByUserIDV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserByUserIDV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserByUserIDV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserByUserIDV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserByUserIDV3OK creates a AdminGetUserByUserIDV3OK with default headers values
func NewAdminGetUserByUserIDV3OK() *AdminGetUserByUserIDV3OK {
	return &AdminGetUserByUserIDV3OK{}
}

/*AdminGetUserByUserIDV3OK handles this case with default header values.

  OK
*/
type AdminGetUserByUserIDV3OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *AdminGetUserByUserIDV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV3OK) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV3OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *AdminGetUserByUserIDV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserByUserIDV3BadRequest creates a AdminGetUserByUserIDV3BadRequest with default headers values
func NewAdminGetUserByUserIDV3BadRequest() *AdminGetUserByUserIDV3BadRequest {
	return &AdminGetUserByUserIDV3BadRequest{}
}

/*AdminGetUserByUserIDV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetUserByUserIDV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserByUserIDV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV3BadRequest) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserByUserIDV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserByUserIDV3Unauthorized creates a AdminGetUserByUserIDV3Unauthorized with default headers values
func NewAdminGetUserByUserIDV3Unauthorized() *AdminGetUserByUserIDV3Unauthorized {
	return &AdminGetUserByUserIDV3Unauthorized{}
}

/*AdminGetUserByUserIDV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserByUserIDV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserByUserIDV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserByUserIDV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserByUserIDV3Forbidden creates a AdminGetUserByUserIDV3Forbidden with default headers values
func NewAdminGetUserByUserIDV3Forbidden() *AdminGetUserByUserIDV3Forbidden {
	return &AdminGetUserByUserIDV3Forbidden{}
}

/*AdminGetUserByUserIDV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserByUserIDV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserByUserIDV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV3Forbidden) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserByUserIDV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserByUserIDV3NotFound creates a AdminGetUserByUserIDV3NotFound with default headers values
func NewAdminGetUserByUserIDV3NotFound() *AdminGetUserByUserIDV3NotFound {
	return &AdminGetUserByUserIDV3NotFound{}
}

/*AdminGetUserByUserIDV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type AdminGetUserByUserIDV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserByUserIDV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV3NotFound) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserByUserIDV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserByUserIDV3InternalServerError creates a AdminGetUserByUserIDV3InternalServerError with default headers values
func NewAdminGetUserByUserIDV3InternalServerError() *AdminGetUserByUserIDV3InternalServerError {
	return &AdminGetUserByUserIDV3InternalServerError{}
}

/*AdminGetUserByUserIDV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserByUserIDV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserByUserIDV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserByUserIDV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
