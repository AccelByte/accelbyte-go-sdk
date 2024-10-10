// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package bans

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

// AdminUnbanUserBulkV3Reader is a Reader for the AdminUnbanUserBulkV3 structure.
type AdminUnbanUserBulkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUnbanUserBulkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminUnbanUserBulkV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUnbanUserBulkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUnbanUserBulkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUnbanUserBulkV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUnbanUserBulkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUnbanUserBulkV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUnbanUserBulkV3Created creates a AdminUnbanUserBulkV3Created with default headers values
func NewAdminUnbanUserBulkV3Created() *AdminUnbanUserBulkV3Created {
	return &AdminUnbanUserBulkV3Created{}
}

/*AdminUnbanUserBulkV3Created handles this case with default header values.

  Created
*/
type AdminUnbanUserBulkV3Created struct {
	Payload *iamclientmodels.ModelListBulkUserBanResponseV3
}

func (o *AdminUnbanUserBulkV3Created) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled][%d] adminUnbanUserBulkV3Created  %+v", 201, o.ToJSONString())
}

func (o *AdminUnbanUserBulkV3Created) ToJSONString() string {
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

func (o *AdminUnbanUserBulkV3Created) GetPayload() *iamclientmodels.ModelListBulkUserBanResponseV3 {
	return o.Payload
}

func (o *AdminUnbanUserBulkV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelListBulkUserBanResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUnbanUserBulkV3BadRequest creates a AdminUnbanUserBulkV3BadRequest with default headers values
func NewAdminUnbanUserBulkV3BadRequest() *AdminUnbanUserBulkV3BadRequest {
	return &AdminUnbanUserBulkV3BadRequest{}
}

/*AdminUnbanUserBulkV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminUnbanUserBulkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanUserBulkV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled][%d] adminUnbanUserBulkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUnbanUserBulkV3BadRequest) ToJSONString() string {
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

func (o *AdminUnbanUserBulkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanUserBulkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanUserBulkV3Unauthorized creates a AdminUnbanUserBulkV3Unauthorized with default headers values
func NewAdminUnbanUserBulkV3Unauthorized() *AdminUnbanUserBulkV3Unauthorized {
	return &AdminUnbanUserBulkV3Unauthorized{}
}

/*AdminUnbanUserBulkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUnbanUserBulkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanUserBulkV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled][%d] adminUnbanUserBulkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUnbanUserBulkV3Unauthorized) ToJSONString() string {
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

func (o *AdminUnbanUserBulkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanUserBulkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanUserBulkV3Forbidden creates a AdminUnbanUserBulkV3Forbidden with default headers values
func NewAdminUnbanUserBulkV3Forbidden() *AdminUnbanUserBulkV3Forbidden {
	return &AdminUnbanUserBulkV3Forbidden{}
}

/*AdminUnbanUserBulkV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUnbanUserBulkV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanUserBulkV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled][%d] adminUnbanUserBulkV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUnbanUserBulkV3Forbidden) ToJSONString() string {
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

func (o *AdminUnbanUserBulkV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanUserBulkV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanUserBulkV3NotFound creates a AdminUnbanUserBulkV3NotFound with default headers values
func NewAdminUnbanUserBulkV3NotFound() *AdminUnbanUserBulkV3NotFound {
	return &AdminUnbanUserBulkV3NotFound{}
}

/*AdminUnbanUserBulkV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type AdminUnbanUserBulkV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanUserBulkV3NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled][%d] adminUnbanUserBulkV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUnbanUserBulkV3NotFound) ToJSONString() string {
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

func (o *AdminUnbanUserBulkV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanUserBulkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanUserBulkV3InternalServerError creates a AdminUnbanUserBulkV3InternalServerError with default headers values
func NewAdminUnbanUserBulkV3InternalServerError() *AdminUnbanUserBulkV3InternalServerError {
	return &AdminUnbanUserBulkV3InternalServerError{}
}

/*AdminUnbanUserBulkV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUnbanUserBulkV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanUserBulkV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/bans/users/disabled][%d] adminUnbanUserBulkV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUnbanUserBulkV3InternalServerError) ToJSONString() string {
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

func (o *AdminUnbanUserBulkV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanUserBulkV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
