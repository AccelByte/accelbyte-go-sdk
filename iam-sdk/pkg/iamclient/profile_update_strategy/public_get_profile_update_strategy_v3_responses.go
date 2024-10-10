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

// PublicGetProfileUpdateStrategyV3Reader is a Reader for the PublicGetProfileUpdateStrategyV3 structure.
type PublicGetProfileUpdateStrategyV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetProfileUpdateStrategyV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetProfileUpdateStrategyV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetProfileUpdateStrategyV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetProfileUpdateStrategyV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetProfileUpdateStrategyV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetProfileUpdateStrategyV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetProfileUpdateStrategyV3OK creates a PublicGetProfileUpdateStrategyV3OK with default headers values
func NewPublicGetProfileUpdateStrategyV3OK() *PublicGetProfileUpdateStrategyV3OK {
	return &PublicGetProfileUpdateStrategyV3OK{}
}

/*PublicGetProfileUpdateStrategyV3OK handles this case with default header values.

  Operation succeeded
*/
type PublicGetProfileUpdateStrategyV3OK struct {
	Payload *iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse
}

func (o *PublicGetProfileUpdateStrategyV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies][%d] publicGetProfileUpdateStrategyV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetProfileUpdateStrategyV3OK) ToJSONString() string {
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

func (o *PublicGetProfileUpdateStrategyV3OK) GetPayload() *iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse {
	return o.Payload
}

func (o *PublicGetProfileUpdateStrategyV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetProfileUpdateStrategyV3BadRequest creates a PublicGetProfileUpdateStrategyV3BadRequest with default headers values
func NewPublicGetProfileUpdateStrategyV3BadRequest() *PublicGetProfileUpdateStrategyV3BadRequest {
	return &PublicGetProfileUpdateStrategyV3BadRequest{}
}

/*PublicGetProfileUpdateStrategyV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetProfileUpdateStrategyV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetProfileUpdateStrategyV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies][%d] publicGetProfileUpdateStrategyV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetProfileUpdateStrategyV3BadRequest) ToJSONString() string {
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

func (o *PublicGetProfileUpdateStrategyV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetProfileUpdateStrategyV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetProfileUpdateStrategyV3Unauthorized creates a PublicGetProfileUpdateStrategyV3Unauthorized with default headers values
func NewPublicGetProfileUpdateStrategyV3Unauthorized() *PublicGetProfileUpdateStrategyV3Unauthorized {
	return &PublicGetProfileUpdateStrategyV3Unauthorized{}
}

/*PublicGetProfileUpdateStrategyV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetProfileUpdateStrategyV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetProfileUpdateStrategyV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies][%d] publicGetProfileUpdateStrategyV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetProfileUpdateStrategyV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetProfileUpdateStrategyV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetProfileUpdateStrategyV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetProfileUpdateStrategyV3Forbidden creates a PublicGetProfileUpdateStrategyV3Forbidden with default headers values
func NewPublicGetProfileUpdateStrategyV3Forbidden() *PublicGetProfileUpdateStrategyV3Forbidden {
	return &PublicGetProfileUpdateStrategyV3Forbidden{}
}

/*PublicGetProfileUpdateStrategyV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetProfileUpdateStrategyV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetProfileUpdateStrategyV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies][%d] publicGetProfileUpdateStrategyV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetProfileUpdateStrategyV3Forbidden) ToJSONString() string {
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

func (o *PublicGetProfileUpdateStrategyV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetProfileUpdateStrategyV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetProfileUpdateStrategyV3InternalServerError creates a PublicGetProfileUpdateStrategyV3InternalServerError with default headers values
func NewPublicGetProfileUpdateStrategyV3InternalServerError() *PublicGetProfileUpdateStrategyV3InternalServerError {
	return &PublicGetProfileUpdateStrategyV3InternalServerError{}
}

/*PublicGetProfileUpdateStrategyV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetProfileUpdateStrategyV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetProfileUpdateStrategyV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies][%d] publicGetProfileUpdateStrategyV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetProfileUpdateStrategyV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetProfileUpdateStrategyV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetProfileUpdateStrategyV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
