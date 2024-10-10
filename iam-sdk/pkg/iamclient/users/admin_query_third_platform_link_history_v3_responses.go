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

// AdminQueryThirdPlatformLinkHistoryV3Reader is a Reader for the AdminQueryThirdPlatformLinkHistoryV3 structure.
type AdminQueryThirdPlatformLinkHistoryV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryThirdPlatformLinkHistoryV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryThirdPlatformLinkHistoryV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryThirdPlatformLinkHistoryV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryThirdPlatformLinkHistoryV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryThirdPlatformLinkHistoryV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryThirdPlatformLinkHistoryV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/linkhistories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryThirdPlatformLinkHistoryV3OK creates a AdminQueryThirdPlatformLinkHistoryV3OK with default headers values
func NewAdminQueryThirdPlatformLinkHistoryV3OK() *AdminQueryThirdPlatformLinkHistoryV3OK {
	return &AdminQueryThirdPlatformLinkHistoryV3OK{}
}

/*AdminQueryThirdPlatformLinkHistoryV3OK handles this case with default header values.

  OK
*/
type AdminQueryThirdPlatformLinkHistoryV3OK struct {
	Payload *iamclientmodels.ModelLinkingHistoryResponseWithPaginationV3
}

func (o *AdminQueryThirdPlatformLinkHistoryV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/linkhistories][%d] adminQueryThirdPlatformLinkHistoryV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryThirdPlatformLinkHistoryV3OK) ToJSONString() string {
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

func (o *AdminQueryThirdPlatformLinkHistoryV3OK) GetPayload() *iamclientmodels.ModelLinkingHistoryResponseWithPaginationV3 {
	return o.Payload
}

func (o *AdminQueryThirdPlatformLinkHistoryV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLinkingHistoryResponseWithPaginationV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryThirdPlatformLinkHistoryV3BadRequest creates a AdminQueryThirdPlatformLinkHistoryV3BadRequest with default headers values
func NewAdminQueryThirdPlatformLinkHistoryV3BadRequest() *AdminQueryThirdPlatformLinkHistoryV3BadRequest {
	return &AdminQueryThirdPlatformLinkHistoryV3BadRequest{}
}

/*AdminQueryThirdPlatformLinkHistoryV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminQueryThirdPlatformLinkHistoryV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminQueryThirdPlatformLinkHistoryV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/linkhistories][%d] adminQueryThirdPlatformLinkHistoryV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryThirdPlatformLinkHistoryV3BadRequest) ToJSONString() string {
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

func (o *AdminQueryThirdPlatformLinkHistoryV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminQueryThirdPlatformLinkHistoryV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryThirdPlatformLinkHistoryV3Unauthorized creates a AdminQueryThirdPlatformLinkHistoryV3Unauthorized with default headers values
func NewAdminQueryThirdPlatformLinkHistoryV3Unauthorized() *AdminQueryThirdPlatformLinkHistoryV3Unauthorized {
	return &AdminQueryThirdPlatformLinkHistoryV3Unauthorized{}
}

/*AdminQueryThirdPlatformLinkHistoryV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminQueryThirdPlatformLinkHistoryV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminQueryThirdPlatformLinkHistoryV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/linkhistories][%d] adminQueryThirdPlatformLinkHistoryV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryThirdPlatformLinkHistoryV3Unauthorized) ToJSONString() string {
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

func (o *AdminQueryThirdPlatformLinkHistoryV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminQueryThirdPlatformLinkHistoryV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryThirdPlatformLinkHistoryV3Forbidden creates a AdminQueryThirdPlatformLinkHistoryV3Forbidden with default headers values
func NewAdminQueryThirdPlatformLinkHistoryV3Forbidden() *AdminQueryThirdPlatformLinkHistoryV3Forbidden {
	return &AdminQueryThirdPlatformLinkHistoryV3Forbidden{}
}

/*AdminQueryThirdPlatformLinkHistoryV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminQueryThirdPlatformLinkHistoryV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminQueryThirdPlatformLinkHistoryV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/linkhistories][%d] adminQueryThirdPlatformLinkHistoryV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryThirdPlatformLinkHistoryV3Forbidden) ToJSONString() string {
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

func (o *AdminQueryThirdPlatformLinkHistoryV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminQueryThirdPlatformLinkHistoryV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryThirdPlatformLinkHistoryV3InternalServerError creates a AdminQueryThirdPlatformLinkHistoryV3InternalServerError with default headers values
func NewAdminQueryThirdPlatformLinkHistoryV3InternalServerError() *AdminQueryThirdPlatformLinkHistoryV3InternalServerError {
	return &AdminQueryThirdPlatformLinkHistoryV3InternalServerError{}
}

/*AdminQueryThirdPlatformLinkHistoryV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminQueryThirdPlatformLinkHistoryV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminQueryThirdPlatformLinkHistoryV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/linkhistories][%d] adminQueryThirdPlatformLinkHistoryV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryThirdPlatformLinkHistoryV3InternalServerError) ToJSONString() string {
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

func (o *AdminQueryThirdPlatformLinkHistoryV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminQueryThirdPlatformLinkHistoryV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
