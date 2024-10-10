// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profile_update_strategy

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

// AdminGetProfileUpdateStrategyV3Reader is a Reader for the AdminGetProfileUpdateStrategyV3 structure.
type AdminGetProfileUpdateStrategyV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetProfileUpdateStrategyV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetProfileUpdateStrategyV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetProfileUpdateStrategyV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetProfileUpdateStrategyV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetProfileUpdateStrategyV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetProfileUpdateStrategyV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetProfileUpdateStrategyV3OK creates a AdminGetProfileUpdateStrategyV3OK with default headers values
func NewAdminGetProfileUpdateStrategyV3OK() *AdminGetProfileUpdateStrategyV3OK {
	return &AdminGetProfileUpdateStrategyV3OK{}
}

/*AdminGetProfileUpdateStrategyV3OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetProfileUpdateStrategyV3OK struct {
	Payload *iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse
}

func (o *AdminGetProfileUpdateStrategyV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminGetProfileUpdateStrategyV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetProfileUpdateStrategyV3OK) ToJSONString() string {
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

func (o *AdminGetProfileUpdateStrategyV3OK) GetPayload() *iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse {
	return o.Payload
}

func (o *AdminGetProfileUpdateStrategyV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfileUpdateStrategyV3BadRequest creates a AdminGetProfileUpdateStrategyV3BadRequest with default headers values
func NewAdminGetProfileUpdateStrategyV3BadRequest() *AdminGetProfileUpdateStrategyV3BadRequest {
	return &AdminGetProfileUpdateStrategyV3BadRequest{}
}

/*AdminGetProfileUpdateStrategyV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetProfileUpdateStrategyV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetProfileUpdateStrategyV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminGetProfileUpdateStrategyV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetProfileUpdateStrategyV3BadRequest) ToJSONString() string {
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

func (o *AdminGetProfileUpdateStrategyV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetProfileUpdateStrategyV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfileUpdateStrategyV3Unauthorized creates a AdminGetProfileUpdateStrategyV3Unauthorized with default headers values
func NewAdminGetProfileUpdateStrategyV3Unauthorized() *AdminGetProfileUpdateStrategyV3Unauthorized {
	return &AdminGetProfileUpdateStrategyV3Unauthorized{}
}

/*AdminGetProfileUpdateStrategyV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetProfileUpdateStrategyV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetProfileUpdateStrategyV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminGetProfileUpdateStrategyV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetProfileUpdateStrategyV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetProfileUpdateStrategyV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetProfileUpdateStrategyV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfileUpdateStrategyV3Forbidden creates a AdminGetProfileUpdateStrategyV3Forbidden with default headers values
func NewAdminGetProfileUpdateStrategyV3Forbidden() *AdminGetProfileUpdateStrategyV3Forbidden {
	return &AdminGetProfileUpdateStrategyV3Forbidden{}
}

/*AdminGetProfileUpdateStrategyV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetProfileUpdateStrategyV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetProfileUpdateStrategyV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminGetProfileUpdateStrategyV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetProfileUpdateStrategyV3Forbidden) ToJSONString() string {
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

func (o *AdminGetProfileUpdateStrategyV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetProfileUpdateStrategyV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfileUpdateStrategyV3InternalServerError creates a AdminGetProfileUpdateStrategyV3InternalServerError with default headers values
func NewAdminGetProfileUpdateStrategyV3InternalServerError() *AdminGetProfileUpdateStrategyV3InternalServerError {
	return &AdminGetProfileUpdateStrategyV3InternalServerError{}
}

/*AdminGetProfileUpdateStrategyV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetProfileUpdateStrategyV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetProfileUpdateStrategyV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminGetProfileUpdateStrategyV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetProfileUpdateStrategyV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetProfileUpdateStrategyV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetProfileUpdateStrategyV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
