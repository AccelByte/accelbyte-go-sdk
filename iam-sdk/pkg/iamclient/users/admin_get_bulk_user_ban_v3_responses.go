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

// AdminGetBulkUserBanV3Reader is a Reader for the AdminGetBulkUserBanV3 structure.
type AdminGetBulkUserBanV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetBulkUserBanV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetBulkUserBanV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetBulkUserBanV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetBulkUserBanV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetBulkUserBanV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetBulkUserBanV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetBulkUserBanV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetBulkUserBanV3OK creates a AdminGetBulkUserBanV3OK with default headers values
func NewAdminGetBulkUserBanV3OK() *AdminGetBulkUserBanV3OK {
	return &AdminGetBulkUserBanV3OK{}
}

/*AdminGetBulkUserBanV3OK handles this case with default header values.

  OK
*/
type AdminGetBulkUserBanV3OK struct {
	Payload *iamclientmodels.ModelGetUserBanV3Response
}

func (o *AdminGetBulkUserBanV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bans][%d] adminGetBulkUserBanV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetBulkUserBanV3OK) ToJSONString() string {
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

func (o *AdminGetBulkUserBanV3OK) GetPayload() *iamclientmodels.ModelGetUserBanV3Response {
	return o.Payload
}

func (o *AdminGetBulkUserBanV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetUserBanV3Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetBulkUserBanV3BadRequest creates a AdminGetBulkUserBanV3BadRequest with default headers values
func NewAdminGetBulkUserBanV3BadRequest() *AdminGetBulkUserBanV3BadRequest {
	return &AdminGetBulkUserBanV3BadRequest{}
}

/*AdminGetBulkUserBanV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetBulkUserBanV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBulkUserBanV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bans][%d] adminGetBulkUserBanV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetBulkUserBanV3BadRequest) ToJSONString() string {
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

func (o *AdminGetBulkUserBanV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBulkUserBanV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetBulkUserBanV3Unauthorized creates a AdminGetBulkUserBanV3Unauthorized with default headers values
func NewAdminGetBulkUserBanV3Unauthorized() *AdminGetBulkUserBanV3Unauthorized {
	return &AdminGetBulkUserBanV3Unauthorized{}
}

/*AdminGetBulkUserBanV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetBulkUserBanV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBulkUserBanV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bans][%d] adminGetBulkUserBanV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetBulkUserBanV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetBulkUserBanV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBulkUserBanV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetBulkUserBanV3Forbidden creates a AdminGetBulkUserBanV3Forbidden with default headers values
func NewAdminGetBulkUserBanV3Forbidden() *AdminGetBulkUserBanV3Forbidden {
	return &AdminGetBulkUserBanV3Forbidden{}
}

/*AdminGetBulkUserBanV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetBulkUserBanV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBulkUserBanV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bans][%d] adminGetBulkUserBanV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetBulkUserBanV3Forbidden) ToJSONString() string {
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

func (o *AdminGetBulkUserBanV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBulkUserBanV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetBulkUserBanV3NotFound creates a AdminGetBulkUserBanV3NotFound with default headers values
func NewAdminGetBulkUserBanV3NotFound() *AdminGetBulkUserBanV3NotFound {
	return &AdminGetBulkUserBanV3NotFound{}
}

/*AdminGetBulkUserBanV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type AdminGetBulkUserBanV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBulkUserBanV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bans][%d] adminGetBulkUserBanV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetBulkUserBanV3NotFound) ToJSONString() string {
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

func (o *AdminGetBulkUserBanV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBulkUserBanV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetBulkUserBanV3InternalServerError creates a AdminGetBulkUserBanV3InternalServerError with default headers values
func NewAdminGetBulkUserBanV3InternalServerError() *AdminGetBulkUserBanV3InternalServerError {
	return &AdminGetBulkUserBanV3InternalServerError{}
}

/*AdminGetBulkUserBanV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetBulkUserBanV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBulkUserBanV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bans][%d] adminGetBulkUserBanV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetBulkUserBanV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetBulkUserBanV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBulkUserBanV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
