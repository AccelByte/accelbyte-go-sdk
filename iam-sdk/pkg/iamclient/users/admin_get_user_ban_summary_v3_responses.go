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

// AdminGetUserBanSummaryV3Reader is a Reader for the AdminGetUserBanSummaryV3 structure.
type AdminGetUserBanSummaryV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserBanSummaryV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserBanSummaryV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserBanSummaryV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserBanSummaryV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserBanSummaryV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserBanSummaryV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserBanSummaryV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserBanSummaryV3OK creates a AdminGetUserBanSummaryV3OK with default headers values
func NewAdminGetUserBanSummaryV3OK() *AdminGetUserBanSummaryV3OK {
	return &AdminGetUserBanSummaryV3OK{}
}

/*AdminGetUserBanSummaryV3OK handles this case with default header values.

  OK
*/
type AdminGetUserBanSummaryV3OK struct {
	Payload *iamclientmodels.ModelGetUserBanSummaryV3
}

func (o *AdminGetUserBanSummaryV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary][%d] adminGetUserBanSummaryV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserBanSummaryV3OK) ToJSONString() string {
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

func (o *AdminGetUserBanSummaryV3OK) GetPayload() *iamclientmodels.ModelGetUserBanSummaryV3 {
	return o.Payload
}

func (o *AdminGetUserBanSummaryV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetUserBanSummaryV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserBanSummaryV3BadRequest creates a AdminGetUserBanSummaryV3BadRequest with default headers values
func NewAdminGetUserBanSummaryV3BadRequest() *AdminGetUserBanSummaryV3BadRequest {
	return &AdminGetUserBanSummaryV3BadRequest{}
}

/*AdminGetUserBanSummaryV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetUserBanSummaryV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanSummaryV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary][%d] adminGetUserBanSummaryV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserBanSummaryV3BadRequest) ToJSONString() string {
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

func (o *AdminGetUserBanSummaryV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanSummaryV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanSummaryV3Unauthorized creates a AdminGetUserBanSummaryV3Unauthorized with default headers values
func NewAdminGetUserBanSummaryV3Unauthorized() *AdminGetUserBanSummaryV3Unauthorized {
	return &AdminGetUserBanSummaryV3Unauthorized{}
}

/*AdminGetUserBanSummaryV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserBanSummaryV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanSummaryV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary][%d] adminGetUserBanSummaryV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserBanSummaryV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserBanSummaryV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanSummaryV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanSummaryV3Forbidden creates a AdminGetUserBanSummaryV3Forbidden with default headers values
func NewAdminGetUserBanSummaryV3Forbidden() *AdminGetUserBanSummaryV3Forbidden {
	return &AdminGetUserBanSummaryV3Forbidden{}
}

/*AdminGetUserBanSummaryV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserBanSummaryV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanSummaryV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary][%d] adminGetUserBanSummaryV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserBanSummaryV3Forbidden) ToJSONString() string {
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

func (o *AdminGetUserBanSummaryV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanSummaryV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanSummaryV3NotFound creates a AdminGetUserBanSummaryV3NotFound with default headers values
func NewAdminGetUserBanSummaryV3NotFound() *AdminGetUserBanSummaryV3NotFound {
	return &AdminGetUserBanSummaryV3NotFound{}
}

/*AdminGetUserBanSummaryV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type AdminGetUserBanSummaryV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanSummaryV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary][%d] adminGetUserBanSummaryV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserBanSummaryV3NotFound) ToJSONString() string {
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

func (o *AdminGetUserBanSummaryV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanSummaryV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanSummaryV3InternalServerError creates a AdminGetUserBanSummaryV3InternalServerError with default headers values
func NewAdminGetUserBanSummaryV3InternalServerError() *AdminGetUserBanSummaryV3InternalServerError {
	return &AdminGetUserBanSummaryV3InternalServerError{}
}

/*AdminGetUserBanSummaryV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserBanSummaryV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanSummaryV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary][%d] adminGetUserBanSummaryV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserBanSummaryV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserBanSummaryV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanSummaryV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
