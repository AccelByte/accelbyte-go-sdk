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

// AdminGetUserLinkHistoriesV3Reader is a Reader for the AdminGetUserLinkHistoriesV3 structure.
type AdminGetUserLinkHistoriesV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserLinkHistoriesV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserLinkHistoriesV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserLinkHistoriesV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserLinkHistoriesV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserLinkHistoriesV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserLinkHistoriesV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserLinkHistoriesV3OK creates a AdminGetUserLinkHistoriesV3OK with default headers values
func NewAdminGetUserLinkHistoriesV3OK() *AdminGetUserLinkHistoriesV3OK {
	return &AdminGetUserLinkHistoriesV3OK{}
}

/*AdminGetUserLinkHistoriesV3OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetUserLinkHistoriesV3OK struct {
	Payload *iamclientmodels.ModelUserPlatformLinkHistories
}

func (o *AdminGetUserLinkHistoriesV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories][%d] adminGetUserLinkHistoriesV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserLinkHistoriesV3OK) ToJSONString() string {
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

func (o *AdminGetUserLinkHistoriesV3OK) GetPayload() *iamclientmodels.ModelUserPlatformLinkHistories {
	return o.Payload
}

func (o *AdminGetUserLinkHistoriesV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserPlatformLinkHistories)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserLinkHistoriesV3BadRequest creates a AdminGetUserLinkHistoriesV3BadRequest with default headers values
func NewAdminGetUserLinkHistoriesV3BadRequest() *AdminGetUserLinkHistoriesV3BadRequest {
	return &AdminGetUserLinkHistoriesV3BadRequest{}
}

/*AdminGetUserLinkHistoriesV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetUserLinkHistoriesV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserLinkHistoriesV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories][%d] adminGetUserLinkHistoriesV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserLinkHistoriesV3BadRequest) ToJSONString() string {
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

func (o *AdminGetUserLinkHistoriesV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserLinkHistoriesV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserLinkHistoriesV3Unauthorized creates a AdminGetUserLinkHistoriesV3Unauthorized with default headers values
func NewAdminGetUserLinkHistoriesV3Unauthorized() *AdminGetUserLinkHistoriesV3Unauthorized {
	return &AdminGetUserLinkHistoriesV3Unauthorized{}
}

/*AdminGetUserLinkHistoriesV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserLinkHistoriesV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserLinkHistoriesV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories][%d] adminGetUserLinkHistoriesV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserLinkHistoriesV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserLinkHistoriesV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserLinkHistoriesV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserLinkHistoriesV3Forbidden creates a AdminGetUserLinkHistoriesV3Forbidden with default headers values
func NewAdminGetUserLinkHistoriesV3Forbidden() *AdminGetUserLinkHistoriesV3Forbidden {
	return &AdminGetUserLinkHistoriesV3Forbidden{}
}

/*AdminGetUserLinkHistoriesV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserLinkHistoriesV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserLinkHistoriesV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories][%d] adminGetUserLinkHistoriesV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserLinkHistoriesV3Forbidden) ToJSONString() string {
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

func (o *AdminGetUserLinkHistoriesV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserLinkHistoriesV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserLinkHistoriesV3InternalServerError creates a AdminGetUserLinkHistoriesV3InternalServerError with default headers values
func NewAdminGetUserLinkHistoriesV3InternalServerError() *AdminGetUserLinkHistoriesV3InternalServerError {
	return &AdminGetUserLinkHistoriesV3InternalServerError{}
}

/*AdminGetUserLinkHistoriesV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserLinkHistoriesV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserLinkHistoriesV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories][%d] adminGetUserLinkHistoriesV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserLinkHistoriesV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserLinkHistoriesV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserLinkHistoriesV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
