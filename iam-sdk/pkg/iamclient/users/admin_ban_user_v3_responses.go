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

// AdminBanUserV3Reader is a Reader for the AdminBanUserV3 structure.
type AdminBanUserV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBanUserV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminBanUserV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBanUserV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBanUserV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBanUserV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBanUserV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBanUserV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBanUserV3Created creates a AdminBanUserV3Created with default headers values
func NewAdminBanUserV3Created() *AdminBanUserV3Created {
	return &AdminBanUserV3Created{}
}

/*AdminBanUserV3Created handles this case with default header values.

  Created
*/
type AdminBanUserV3Created struct {
	Payload *iamclientmodels.ModelUserBanResponseV3
}

func (o *AdminBanUserV3Created) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminBanUserV3Created  %+v", 201, o.ToJSONString())
}

func (o *AdminBanUserV3Created) ToJSONString() string {
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

func (o *AdminBanUserV3Created) GetPayload() *iamclientmodels.ModelUserBanResponseV3 {
	return o.Payload
}

func (o *AdminBanUserV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserBanResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBanUserV3BadRequest creates a AdminBanUserV3BadRequest with default headers values
func NewAdminBanUserV3BadRequest() *AdminBanUserV3BadRequest {
	return &AdminBanUserV3BadRequest{}
}

/*AdminBanUserV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminBanUserV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminBanUserV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBanUserV3BadRequest) ToJSONString() string {
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

func (o *AdminBanUserV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanUserV3Unauthorized creates a AdminBanUserV3Unauthorized with default headers values
func NewAdminBanUserV3Unauthorized() *AdminBanUserV3Unauthorized {
	return &AdminBanUserV3Unauthorized{}
}

/*AdminBanUserV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBanUserV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminBanUserV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBanUserV3Unauthorized) ToJSONString() string {
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

func (o *AdminBanUserV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanUserV3Forbidden creates a AdminBanUserV3Forbidden with default headers values
func NewAdminBanUserV3Forbidden() *AdminBanUserV3Forbidden {
	return &AdminBanUserV3Forbidden{}
}

/*AdminBanUserV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBanUserV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminBanUserV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBanUserV3Forbidden) ToJSONString() string {
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

func (o *AdminBanUserV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanUserV3NotFound creates a AdminBanUserV3NotFound with default headers values
func NewAdminBanUserV3NotFound() *AdminBanUserV3NotFound {
	return &AdminBanUserV3NotFound{}
}

/*AdminBanUserV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type AdminBanUserV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminBanUserV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBanUserV3NotFound) ToJSONString() string {
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

func (o *AdminBanUserV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanUserV3InternalServerError creates a AdminBanUserV3InternalServerError with default headers values
func NewAdminBanUserV3InternalServerError() *AdminBanUserV3InternalServerError {
	return &AdminBanUserV3InternalServerError{}
}

/*AdminBanUserV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBanUserV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminBanUserV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBanUserV3InternalServerError) ToJSONString() string {
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

func (o *AdminBanUserV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
