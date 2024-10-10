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

// AdminUpdateProfileUpdateStrategyV3Reader is a Reader for the AdminUpdateProfileUpdateStrategyV3 structure.
type AdminUpdateProfileUpdateStrategyV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateProfileUpdateStrategyV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateProfileUpdateStrategyV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateProfileUpdateStrategyV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateProfileUpdateStrategyV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateProfileUpdateStrategyV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateProfileUpdateStrategyV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateProfileUpdateStrategyV3OK creates a AdminUpdateProfileUpdateStrategyV3OK with default headers values
func NewAdminUpdateProfileUpdateStrategyV3OK() *AdminUpdateProfileUpdateStrategyV3OK {
	return &AdminUpdateProfileUpdateStrategyV3OK{}
}

/*AdminUpdateProfileUpdateStrategyV3OK handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateProfileUpdateStrategyV3OK struct {
	Payload *iamclientmodels.ModelSimpleProfileUpdateStrategyConfigs
}

func (o *AdminUpdateProfileUpdateStrategyV3OK) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminUpdateProfileUpdateStrategyV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateProfileUpdateStrategyV3OK) ToJSONString() string {
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

func (o *AdminUpdateProfileUpdateStrategyV3OK) GetPayload() *iamclientmodels.ModelSimpleProfileUpdateStrategyConfigs {
	return o.Payload
}

func (o *AdminUpdateProfileUpdateStrategyV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelSimpleProfileUpdateStrategyConfigs)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateProfileUpdateStrategyV3BadRequest creates a AdminUpdateProfileUpdateStrategyV3BadRequest with default headers values
func NewAdminUpdateProfileUpdateStrategyV3BadRequest() *AdminUpdateProfileUpdateStrategyV3BadRequest {
	return &AdminUpdateProfileUpdateStrategyV3BadRequest{}
}

/*AdminUpdateProfileUpdateStrategyV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUpdateProfileUpdateStrategyV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateProfileUpdateStrategyV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminUpdateProfileUpdateStrategyV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateProfileUpdateStrategyV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateProfileUpdateStrategyV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateProfileUpdateStrategyV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateProfileUpdateStrategyV3Unauthorized creates a AdminUpdateProfileUpdateStrategyV3Unauthorized with default headers values
func NewAdminUpdateProfileUpdateStrategyV3Unauthorized() *AdminUpdateProfileUpdateStrategyV3Unauthorized {
	return &AdminUpdateProfileUpdateStrategyV3Unauthorized{}
}

/*AdminUpdateProfileUpdateStrategyV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateProfileUpdateStrategyV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateProfileUpdateStrategyV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminUpdateProfileUpdateStrategyV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateProfileUpdateStrategyV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateProfileUpdateStrategyV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateProfileUpdateStrategyV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateProfileUpdateStrategyV3Forbidden creates a AdminUpdateProfileUpdateStrategyV3Forbidden with default headers values
func NewAdminUpdateProfileUpdateStrategyV3Forbidden() *AdminUpdateProfileUpdateStrategyV3Forbidden {
	return &AdminUpdateProfileUpdateStrategyV3Forbidden{}
}

/*AdminUpdateProfileUpdateStrategyV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateProfileUpdateStrategyV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateProfileUpdateStrategyV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminUpdateProfileUpdateStrategyV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateProfileUpdateStrategyV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateProfileUpdateStrategyV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateProfileUpdateStrategyV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateProfileUpdateStrategyV3InternalServerError creates a AdminUpdateProfileUpdateStrategyV3InternalServerError with default headers values
func NewAdminUpdateProfileUpdateStrategyV3InternalServerError() *AdminUpdateProfileUpdateStrategyV3InternalServerError {
	return &AdminUpdateProfileUpdateStrategyV3InternalServerError{}
}

/*AdminUpdateProfileUpdateStrategyV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateProfileUpdateStrategyV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateProfileUpdateStrategyV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies][%d] adminUpdateProfileUpdateStrategyV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateProfileUpdateStrategyV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateProfileUpdateStrategyV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateProfileUpdateStrategyV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
